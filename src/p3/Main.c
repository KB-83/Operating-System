code Main

  -- OS Class: Project 3
  -- Kajal Baghestani
  -- <401100071>

  function main ()
      print ("Example Thread-based Programs...\n")
      InitializeScheduler ()

      --  DiningPhilosophers ()

      --  ThreadFinish ()
      TestBarberShop()

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
endCode




-----------------------------  Gaming Parlor  ---------------------------------

  var
    mon: GamingParlorMonitor 
    teams: array [8] of Thread = new array of Thread {8 of new Thread }

  function DiningPhilosophers ()

      mon = GamingParlorMonitor 
      mon.Init()

      teams[0].Init ("A – Backgammon")
      teams[0].Fork (Play, 4)

      teams[1].Init ("B – Backgammon")
      teams[1].Fork (Play, 4)

      teams[2].Init ("C – Risk")
      teams[2].Fork (Play, 5)

      teams[3].Init ("D – Risk")
      teams[3].Fork (Play, 5)

      teams[4].Init ("E – Monopoly")
      teams[4].Fork (Play, 2)

      teams[5].Init ("F – Monopoly")
      teams[5].Fork (Play, 2)

      teams[6].Init ("G – Pictionary")
      teams[6].Fork (Play, 1)

      teams[7].Init ("H – Pictionary")
      teams[7].Fork (Play, 1)


     endFunction

    function Play (p: int)
    -- The parameter "p" identifies which philosopher this is.
    -- In a loop, he will think, acquire his forks, eat, and
    -- put down his forks.
      var
        i: int
      for i = 1 to 5
        -- Now he is thinking
        mon. Request (p)
        -- Now he is eating
        mon. Return (p)
      endFor
    endFunction

  class GamingParlorMonitor
    superclass Object
    fields
        dices : Semaphore
    --    status: array [5] of int             -- For each philosopher: HUNGRY, EATING, or THINKING
      monitor : Condition
      mute : Mutex
      available : int
    methods
      Init ()
      Request (numberOfDice: int)
      Return (numberOfDice: int)
    --    PrintAllStatus ()
  endClass

  behavior GamingParlorMonitor
    method Init ()
  --  var 
  --    i:int
  dices = new Semaphore
  dices.Init(8)
  mute = new Mutex
  mute.Init()
  monitor = new Condition
  monitor.Init()
  available = 8
--    status = new array of int {5 of THINKING}
endMethod

method Request (numberOfDice: int)
    var 
    i : int
  mute.Lock()
  if available >= numberOfDice
    available = available - numberOfDice
    for i = 1 to i = numberOfDice
    dices.Down()
    endFor
  else
  monitor.wait(&mute)
  endIf
  mute.Unlock()
endMethod

method Return (numberOfDice: int)
    var 
    i : int
  mute.Lock()
    available = available + numberOfDice
    for i = 1 to i = numberOfDice
    dices.Up()
    endFor
  monitor.Broadcast(&mute)
  mute.Unlock()
endMethod


    --  method PrintAllStatus ()
    --    -- Print a single line showing the status of all philosophers.
    --    --      '.' means thinking
    --    --      ' ' means hungry
    --    --      'E' means eating
    --    -- Note that this method is internal to the monitor.  Thus, when
    --    -- it is called, the monitor lock will already have been acquired
    --    -- by the thread.  Therefore, this method can never be re-entered,
    --    -- since only one thread at a time may execute within the monitor.
    --    -- Consequently, printing is safe.  This method calls the "print"
    --    -- routine several times to print a single line, but these will all
    --    -- happen without interuption.
    --      var
    --        p: int
    --      for p = 0 to 4
    --        switch status [p]
    --          case HUNGRY:
    --            print ("-   ")
    --            break
    --          case EATING:
    --            print ("E   ")
    --            break
    --          case THINKING:
    --            print (".   ")
    --            break
    --        endSwitch
    --      endFor
    --      nl ()
    --    endMethod

  endBehavior
endCode

