.class Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$1;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$1;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    invoke-virtual {v0}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->doInBackground()V

    .line 401
    return-void
.end method
