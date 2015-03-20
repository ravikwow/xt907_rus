.class Lcom/motorola/simmanager/UserTask$InternalHandler;
.super Landroid/os/Handler;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/simmanager/UserTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/simmanager/UserTask$1;

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/motorola/simmanager/UserTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 454
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;

    .line 455
    .local v0, "result":Lcom/motorola/simmanager/UserTask$UserTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-object v1, v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mTask:Lcom/motorola/simmanager/UserTask;

    iget-object v2, v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcom/motorola/simmanager/UserTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/motorola/simmanager/UserTask;->access$300(Lcom/motorola/simmanager/UserTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v1, v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mTask:Lcom/motorola/simmanager/UserTask;

    iget-object v2, v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/motorola/simmanager/UserTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v1, v0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mTask:Lcom/motorola/simmanager/UserTask;

    invoke-virtual {v1}, Lcom/motorola/simmanager/UserTask;->onCancelled()V

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
