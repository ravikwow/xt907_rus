.class Lcom/motorola/blur/fsm/SetupFSM$1;
.super Landroid/os/AsyncTask;
.source "SetupFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/fsm/SetupFSM;->setControllerActivity(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/fsm/SetupFSM;


# direct methods
.method constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    .line 690
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/motorola/blur/fsm/SetupFSM;->access$100(Lcom/motorola/blur/fsm/SetupFSM;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/motorola/blur/fsm/SetupFSM;->access$200(Lcom/motorola/blur/fsm/SetupFSM;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->mControllerContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/blur/fsm/SetupFSM;->access$300(Lcom/motorola/blur/fsm/SetupFSM;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/motorola/blur/fsm/SetupFSM;->access$100(Lcom/motorola/blur/fsm/SetupFSM;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/motorola/blur/fsm/SetupFSM;->init(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->access$400(Lcom/motorola/blur/fsm/SetupFSM;Landroid/content/Context;Landroid/content/Intent;)V

    .line 694
    :cond_0
    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/fsm/SetupFSM;->access$500()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM$1;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-static {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->dumpData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 697
    :cond_1
    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/fsm/SetupFSM;->access$500()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setControllerActivity().AsyncTask.doInBackground(): mControllerActivity == null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSM$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
