code Main

  -- OS Class: Project 3
  -- Kajal Baghestani
  -- <401100071>

  function main ()
      print ("Example Thread-based Programs...\n")
      InitializeScheduler ()
      GamingParlor ()

    --    TestBarberShop()

    endFunction

-----------------------------  Sleeping Barber  ---------------------------------

  enum HUNGRY, EATING, THINKING
  var
    customers : Semaphore
    barbers : Semaphore
    mutex : Semaphore
    waiting : int 
    barberThread : Thread 
    customerThreads : array [20] of Thread
    printMu :  Semaphore

  
  function Init ()
        customers = new Semaphore
        barbers = new Semaphore
        mutex = new Semaphore
        printMu = new Semaphore
        customers.Init(0)
        barbers.Init(0)
        mutex.Init(1)
        printMu.Init(1)
        waiting = 0
  endFunction


  function Barber (p: int)
        while true
            customers.Down()     -- Wait for a customer
            mutex.Down()         -- Protect the waiting count
            waiting = waiting - 1
            barbers.Up()         -- Signal that barber is ready
            mutex.Up()
            CutHair()       -- Perform haircut
        endWhile
  endFunction

  function Customer (p: int)
        mutex.Down()             -- Protect the waiting count
        printMu.Down()           -- Synchronize print operations
        nl()
        printInt(p)
        nl()
        print("waiting costumers : ")
        printInt(waiting)
        nl()
        printMu.Up()
        print(currentThread.name)
        --  PrintState()
        if waiting < 5           -- Check if there's space in the waiting area
            print("Hereee        My room ")
            waiting = waiting + 1
            customers.Up()       -- Signal that a customer is waiting
            mutex.Up()
            barbers.Down()       -- Wait for a barber
            HairCut()       -- Get haircut
        else
            -- If no space, leave without haircut
            mutex.Up()
        endIf
  endFunction

  function HairCut ()
        print(currentThread.name)
        print(" is getting a haircut **** \n")
  endFunction

  function CutHair ()
        print(currentThread.name)
        print(" Barber is cutting hair\n")
        --  currentThread.()   -- Simulate time taken to cut hair
  endFunction

  --  function PrintState ()
  --        printMu.Down()
  --        print("Snapshot - Waiting customers: ")
  --        printInt(waiting)
  --        nl()
  --        if waiting > 0
  --            print("Snapshot - Barber is busy\n")
  --        else
  --            print("Snapshot - Barber is idle\n")
  --        endIf
  --        printMu.Up()
  --  endFunction

  --  function MonitorBarberShop (p : int)
  --        while true
  --            PrintState()
  --            currentThread.Yield()   -- Give other threads time to run
  --        endWhile
  --  endFunction


  function TestBarberShop ()
    print("Hi")
    Init()


    barberThread = new Thread
    barberThread.Init("Barber")
    barberThread.Fork(Barber, 1)

    customerThreads = new array of Thread {20 of new Thread}
    customerThreads[0].Init("C0")
    customerThreads[0].Fork(Customer, 0)
    --  PrintState()

    customerThreads[1].Init("C1")
    customerThreads[1].Fork(Customer, 1)
        --  PrintState()


    customerThreads[2].Init("C2")
    customerThreads[2].Fork(Customer, 2)
        --  PrintState()

    customerThreads[3].Init("C3")
    customerThreads[3].Fork(Customer, 3)
        --  PrintState()

    customerThreads[4].Init("C4")
    customerThreads[4].Fork(Customer, 4)
        --  PrintState()

    customerThreads[5].Init("C5")
    customerThreads[5].Fork(Customer, 5)
        --  PrintState()

    customerThreads[6].Init("C6")
    customerThreads[6].Fork(Customer, 6)
        --  PrintState()

    customerThreads[7].Init("C7")
    customerThreads[7].Fork(Customer, 7)
        --  PrintState()

    customerThreads[8].Init("C8")
    customerThreads[8].Fork(Customer, 8)
        --  PrintState()

    customerThreads[9].Init("C9")
    customerThreads[9].Fork(Customer, 9)
        --  PrintState()

        customerThreads[10].Init("C10")
    customerThreads[10].Fork(Customer, 10)
        --  PrintState()

    customerThreads[11].Init("C11")
    customerThreads[11].Fork(Customer, 11)
        --  PrintState()

    customerThreads[12].Init("C12")
    customerThreads[12].Fork(Customer, 12)
        --  PrintState()

    customerThreads[13].Init("C13")
    customerThreads[13].Fork(Customer, 13)
        --  PrintState()

    customerThreads[14].Init("C14")
    customerThreads[14].Fork(Customer, 14)
        --  PrintState()

    customerThreads[15].Init("C15")
    customerThreads[15].Fork(Customer, 15)
        --  PrintState()

    customerThreads[16].Init("C16")
    customerThreads[16].Fork(Customer, 16)
        --  PrintState()

    customerThreads[17].Init("C17")
    customerThreads[17].Fork(Customer, 17)
        --  PrintState()

    customerThreads[18].Init("C18")
    customerThreads[18].Fork(Customer, 18)
        --  PrintState()

    customerThreads[19].Init("C19")
    customerThreads[19].Fork(Customer, 19)
        --  PrintState()

        print("\nKB83\n")
    ThreadFinish ()

    
  endFunction


-----------------------------  Gaming Parlor  ---------------------------------
    enum PLAYING, WAITING , FREE
  var
    mon: GamingParlorMonitor 
    teams: array [8] of Thread = new array of Thread {8 of new Thread }
    mut : Semaphore
    numOfPlayed : array [8] of int = new array of int{8 of 0}

  function GamingParlor ()

      mon = new GamingParlorMonitor 
      mon.Init()
      mut = new Semaphore
      mut.Init(1)
      mon.PrintAllStatus ()

      teams[0].Init ("A  Backgammon")
      teams[0].Fork (Play, 40)

      teams[1].Init ("B  Backgammon")
      teams[1].Fork (Play ,41)

      teams[2].Init ("C  Risk")
      teams[2].Fork (Play, 52)

      teams[3].Init ("D  Risk")
      teams[3].Fork (Play, 53)

      teams[4].Init ("E  Monopoly")
      teams[4].Fork (Play, 24)

      teams[5].Init ("F  Monopoly")
      teams[5].Fork (Play,25)

      teams[6].Init ("G  Pictionary")
      teams[6].Fork (Play,16)

      teams[7].Init ("H  Pictionary")
      teams[7].Fork (Play,17)

        ThreadFinish ()

     endFunction

    function Play (in : int)
      var
        id,p: int
      id = in % 10
      p = in - id
      p = p / 10
      while numOfPlayed[id] < 5
                mon. Request (id , p)
      endWhile
    endFunction

  class GamingParlorMonitor
    superclass Object
    fields
        dices : Semaphore
      status: array [8] of int
      monitor : Condition
      mute : Mutex
      available : int
    methods
      Init ()
      Request (teamId :int ,numberOfDice: int)
      Return (teamId :int ,numberOfDice: int)
      PrintAllStatus ()
  endClass

behavior GamingParlorMonitor
    method Init ()
    dices = new Semaphore
    dices.Init(8)
    mute = new Mutex
    mute.Init()
    monitor = new Condition
    monitor.Init()
    available = 8
    status = new array of int {8 of FREE}
endMethod

method Request(teamId: int, numberOfDice: int)
    var i: int
    mute.Lock()
    if available >= numberOfDice
        available = available - numberOfDice
        for i = 1 to numberOfDice
            dices.Down()
        endFor
        status[teamId] = PLAYING
        self.PrintAllStatus()
        numOfPlayed[teamId] = numOfPlayed[teamId] + 1
            mute.Unlock()
        currentThread.Yield() -- play
        self.Return(teamId,numberOfDice) -- return
    else
        status[teamId] = WAITING
        self.PrintAllStatus()
        monitor.Wait(&mute)
    endIf
    mute.Unlock()
endMethod


method Return(teamId: int, numberOfDice: int)
    var i: int
    mute.Lock()
        available = available + numberOfDice
        for i = 1 to numberOfDice
            dices.Up()
        endFor
        status[teamId] = FREE
            self.PrintAllStatus()

        if available > 0
            monitor.Broadcast(&mute)
        endIf
     mute.Unlock()
endMethod

    method PrintAllStatus ()
    var p: int
    mut.Down()
    for p = 0 to 7
        switch status[p]
            case WAITING:
                print("W  ")
                break
            case PLAYING:
                print("P  ")
                break
            case FREE:
                print("F  ")
                break
        endSwitch
    endFor
    nl()
    print("num of available dices: ")
    printInt(available)
    nl()
    mut.Up()
endMethod


  endBehavior
endCode

