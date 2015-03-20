.class final Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;
.super Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmaraMap_GoogleSetup"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 3561
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;-><init>(Ljava/lang/String;I)V

    .line 3562
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 3552
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 3575
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3577
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3579
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : EmaraMap.GoogleSetup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3581
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3583
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3585
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: EmaraMap.GoogleSetup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3588
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3590
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3592
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : EmaraMap.GoogleSetup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3595
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 2
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 3566
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 3568
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->showGoogleSetup(Landroid/app/Activity;)V

    .line 3569
    return-void
.end method

.method protected OK(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 3601
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3603
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3605
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : EmaraMap.GoogleSetup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3607
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3608
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3610
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3612
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: EmaraMap.GoogleSetup.OK()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3615
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3617
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3619
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : EmaraMap.GoogleSetup.OK()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3622
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3623
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3624
    return-void
.end method

.method protected OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/16 v6, 0xe

    const/4 v4, 0x1

    .line 3629
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 3631
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 3633
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3635
    .local v2, "str":Ljava/io/PrintStream;
    const-string v5, "LEAVING STATE   : EmaraMap.GoogleSetup"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3637
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    if-ne p3, v6, :cond_3

    if-nez p4, :cond_3

    .line 3639
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3640
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 3642
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3644
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3648
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 3650
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3652
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3655
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->DataSettings:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3656
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3750
    :goto_0
    return-void

    .line 3658
    :cond_3
    if-ne p3, v6, :cond_8

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->isTosShownDuringSetup()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3660
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3661
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_4

    .line 3663
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3665
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v5, "ENTER TRANSITION: EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3668
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_4
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 3671
    if-ne p4, v7, :cond_5

    move v3, v4

    :cond_5
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/motorola/blur/fsm/SetupFSM;->setGoogleAccountCreated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3675
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_6

    .line 3677
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3679
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3682
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_6
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3683
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto :goto_0

    .line 3675
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_7

    .line 3677
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3679
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3682
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_7
    sget-object v4, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;

    invoke-virtual {p1, v4}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3683
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    throw v3

    .line 3687
    :cond_8
    if-ne p3, v6, :cond_d

    invoke-virtual {v0, p2}, Lcom/motorola/blur/fsm/SetupFSM;->isSystemUpdateCase(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 3689
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 3690
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_9

    .line 3692
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3694
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v5, "ENTER TRANSITION: EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3697
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_9
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 3700
    if-ne p4, v7, :cond_a

    move v3, v4

    :cond_a
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/motorola/blur/fsm/SetupFSM;->setGoogleAccountCreated(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3704
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_b

    .line 3706
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3708
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3711
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_b
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3712
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto/16 :goto_0

    .line 3704
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_c

    .line 3706
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3708
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3711
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_c
    sget-object v4, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    invoke-virtual {p1, v4}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3712
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    throw v3

    .line 3716
    :cond_d
    if-ne p3, v6, :cond_12

    invoke-virtual {v0, p2}, Lcom/motorola/blur/fsm/SetupFSM;->isSystemUpdateCase(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3718
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v1

    .line 3719
    .local v1, "endState":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_e

    .line 3721
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3723
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v5, "ENTER TRANSITION: EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3726
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_e
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 3729
    if-ne p4, v7, :cond_f

    move v3, v4

    :cond_f
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/motorola/blur/fsm/SetupFSM;->setGoogleAccountCreated(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3733
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_10

    .line 3735
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3737
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3740
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_10
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3741
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->pushState(Lstatemap/State;)V

    .line 3742
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto/16 :goto_0

    .line 3733
    :catchall_2
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v5

    if-ne v5, v4, :cond_11

    .line 3735
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 3737
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : EmaraMap.GoogleSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3740
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_11
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3741
    sget-object v4, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;

    invoke-virtual {p1, v4}, Lstatemap/FSMContext;->pushState(Lstatemap/State;)V

    .line 3742
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    throw v3

    .line 3747
    .end local v1    # "endState":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    :cond_12
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
