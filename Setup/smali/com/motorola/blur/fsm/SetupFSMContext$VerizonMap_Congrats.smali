.class final Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;
.super Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerizonMap_Congrats"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2745
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2746
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 2736
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 2760
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2762
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2764
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : VerizonMap.Congrats"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2766
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2768
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2770
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: VerizonMap.Congrats.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2773
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2775
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2777
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : VerizonMap.Congrats.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2780
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 2
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 2750
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 2752
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->setChooserAllowed(Z)V

    .line 2753
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->showCongrats(Landroid/app/Activity;)V

    .line 2754
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
    const/16 v3, 0xa

    const/4 v4, 0x1

    .line 2785
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 2787
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2789
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2791
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : VerizonMap.Congrats"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2793
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    if-ne p3, v3, :cond_3

    if-nez p4, :cond_3

    .line 2795
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2796
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2798
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2800
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: VerizonMap.Congrats.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2804
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2806
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2808
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : VerizonMap.Congrats.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2811
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->HuxEmail:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2812
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2847
    :goto_0
    return-void

    .line 2814
    :cond_3
    if-ne p3, v3, :cond_7

    .line 2816
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 2817
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2819
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2821
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: VerizonMap.Congrats.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2824
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 2827
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/motorola/blur/fsm/SetupFSM;->setChooserAllowed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2831
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 2833
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2835
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : VerizonMap.Congrats.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2838
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2839
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto :goto_0

    .line 2831
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_6

    .line 2833
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2835
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : VerizonMap.Congrats.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2838
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2839
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    throw v2

    .line 2844
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
