.class Lcom/motorola/simmanager/UserTask$2;
.super Lcom/motorola/simmanager/UserTask$WorkerRunnable;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/UserTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/simmanager/UserTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/UserTask;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/UserTask;)V
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/motorola/simmanager/UserTask$2;, "Lcom/motorola/simmanager/UserTask.2;"
    iput-object p1, p0, Lcom/motorola/simmanager/UserTask$2;->this$0:Lcom/motorola/simmanager/UserTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/simmanager/UserTask$WorkerRunnable;-><init>(Lcom/motorola/simmanager/UserTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/motorola/simmanager/UserTask$2;, "Lcom/motorola/simmanager/UserTask.2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 196
    iget-object v0, p0, Lcom/motorola/simmanager/UserTask$2;->this$0:Lcom/motorola/simmanager/UserTask;

    iget-object v1, p0, Lcom/motorola/simmanager/UserTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/motorola/simmanager/UserTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
