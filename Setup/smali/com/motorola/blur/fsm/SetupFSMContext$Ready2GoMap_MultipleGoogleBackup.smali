.class final Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;
.super Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ready2GoMap_MultipleGoogleBackup"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 5123
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;-><init>(Ljava/lang/String;I)V

    .line 5124
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/fsm/SetupFSMContext$1;

    .prologue
    .line 5114
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 3
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    const/4 v2, 0x1

    .line 5137
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5139
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5141
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : Ready2GoMap.MultipleGoogleBackup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5143
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 5145
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5147
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: Ready2GoMap.MultipleGoogleBackup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5150
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5152
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 5154
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : Ready2GoMap.MultipleGoogleBackup.Default()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5157
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 2
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 5128
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 5130
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->showMultipleGoogleBackup(Landroid/app/Activity;)V

    .line 5131
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

    .line 5162
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getOwner()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    .line 5164
    .local v0, "ctxt":Lcom/motorola/blur/fsm/SetupFSM;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5166
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5168
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : Ready2GoMap.MultipleGoogleBackup"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5170
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    const/16 v2, 0x14

    if-ne p3, v2, :cond_3

    .line 5172
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 5173
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 5175
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5177
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: Ready2GoMap.MultipleGoogleBackup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5181
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 5183
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5185
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : Ready2GoMap.MultipleGoogleBackup.OnActivityResult(Activity activity, int requestCode, int resultCode, Intent data)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5188
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 5189
    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 5196
    :goto_0
    return-void

    .line 5193
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
