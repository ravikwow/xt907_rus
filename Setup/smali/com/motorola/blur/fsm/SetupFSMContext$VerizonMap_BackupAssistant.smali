.class final Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;
.super Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerizonMap_BackupAssistant"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2525
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2526
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 2516
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 2539
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2541
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2543
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : VerizonMap.BackupAssistant"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2545
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2547
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2549
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: VerizonMap.BackupAssistant.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2552
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2554
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2556
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : VerizonMap.BackupAssistant.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2559
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 2
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 2530
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 2532
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->showBUA(Landroid/app/Activity;)V

    .line 2533
    return-void
.end method

.method protected OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 2564
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 2566
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2568
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2570
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : VerizonMap.BackupAssistant"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2572
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    if-ne p3, v4, :cond_3

    if-nez p4, :cond_3

    .line 2574
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2575
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2577
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2579
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: VerizonMap.BackupAssistant.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2583
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 2585
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2587
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : VerizonMap.BackupAssistant.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2590
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->BackupAssistantIntro:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2591
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2618
    :goto_0
    return-void

    .line 2593
    :cond_3
    if-ne p3, v4, :cond_6

    .line 2595
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2596
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 2598
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2600
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: VerizonMap.BackupAssistant.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2604
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_5

    .line 2606
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2608
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : VerizonMap.BackupAssistant.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2611
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->HuxEmail:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2612
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto :goto_0

    .line 2615
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
