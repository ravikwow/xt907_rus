.class Lcom/motorola/messaging/view/MessageListItem$1$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessageListItem$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/view/MessageListItem$1;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem$1;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/view/MessageListItem$1$1$1;-><init>(Lcom/motorola/messaging/view/MessageListItem$1$1;Landroid/os/Handler;I)V

    .line 449
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "run_downloading"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 450
    return-void
.end method
