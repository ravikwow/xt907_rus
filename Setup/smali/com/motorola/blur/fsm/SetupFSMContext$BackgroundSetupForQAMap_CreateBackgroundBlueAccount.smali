.class final Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;
.super Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackgroundSetupForQAMap_CreateBackgroundBlueAccount"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 5533
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;-><init>(Ljava/lang/String;I)V

    .line 5534
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 5524
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 5547
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5549
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5551
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : BackgroundSetupForQAMap.CreateBackgroundBlueAccount"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5553
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 5555
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5557
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: BackgroundSetupForQAMap.CreateBackgroundBlueAccount.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5560
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5562
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5564
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : BackgroundSetupForQAMap.CreateBackgroundBlueAccount.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5567
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 2
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 5538
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 5540
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->createBackgroundBlurAccount(Landroid/app/Activity;)V

    .line 5541
    return-void
.end method

.method protected OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 5572
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 5574
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5576
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5578
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : BackgroundSetupForQAMap.CreateBackgroundBlueAccount"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5580
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    const/4 v2, 0x6

    if-ne p3, v2, :cond_3

    .line 5582
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 5583
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 5585
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5587
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: BackgroundSetupForQAMap.CreateBackgroundBlueAccount.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5591
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 5593
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5595
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : BackgroundSetupForQAMap.CreateBackgroundBlueAccount.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5598
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->QaSilent:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 5599
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 5606
    :goto_0
    return-void

    .line 5603
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
