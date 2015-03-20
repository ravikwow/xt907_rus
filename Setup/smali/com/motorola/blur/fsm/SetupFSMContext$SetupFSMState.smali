.class public abstract Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
.super Lstatemap/State;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetupFSMState"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lstatemap/State;-><init>(Ljava/lang/String;I)V

    .line 268
    return-void
.end method


# virtual methods
.method protected Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 4
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 320
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 322
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 325
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : Default"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    new-instance v1, Lstatemap/TransitionUndefinedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v3

    invoke-virtual {v3}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getTransition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lstatemap/TransitionUndefinedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected Done(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 276
    return-void
.end method

.method protected Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 270
    return-void
.end method

.method protected Exit(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 271
    return-void
.end method

.method protected OK(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 281
    return-void
.end method

.method protected OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 286
    return-void
.end method

.method protected OnBack(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 291
    return-void
.end method

.method protected OnFinish(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 296
    return-void
.end method

.method protected OnNext(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 301
    return-void
.end method

.method protected OnNext(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "resultCode"    # I

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 306
    return-void
.end method

.method protected OnStartActivity(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 311
    return-void
.end method

.method protected Start(Lcom/motorola/blur/fsm/SetupFSMContext;)V
    .locals 0
    .param p1, "context"    # Lcom/motorola/blur/fsm/SetupFSMContext;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Default(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 316
    return-void
.end method
