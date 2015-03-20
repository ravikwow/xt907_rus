.class final Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;
.super Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CoreMap_SkipSetup"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1713
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;-><init>(Ljava/lang/String;I)V

    .line 1714
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 1704
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 1728
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1730
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1732
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : CoreMap.SkipSetup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1734
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1736
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1738
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: CoreMap.SkipSetup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1741
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1743
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1745
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : CoreMap.SkipSetup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1748
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 1718
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 1720
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getSkipSetupExtra()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->showSkipSetup(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1721
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->setSkipSetupExtra(Landroid/content/Intent;)V

    .line 1722
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
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1753
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 1755
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1757
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1759
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : CoreMap.SkipSetup"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1761
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    if-ne p3, v4, :cond_3

    if-nez p4, :cond_3

    .line 1763
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 1764
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1766
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1768
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: CoreMap.SkipSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1772
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1774
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1776
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : CoreMap.SkipSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1779
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->StartHome:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1780
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 1807
    :goto_0
    return-void

    .line 1782
    :cond_3
    if-ne p3, v4, :cond_6

    .line 1784
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 1785
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1787
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1789
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: CoreMap.SkipSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1793
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1795
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1797
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : CoreMap.SkipSetup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1800
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1801
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    goto :goto_0

    .line 1804
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
