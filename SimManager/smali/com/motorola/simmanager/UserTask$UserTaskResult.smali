.class Lcom/motorola/simmanager/UserTask$UserTaskResult;
.super Ljava/lang/Object;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/motorola/simmanager/UserTask;


# direct methods
.method varargs constructor <init>(Lcom/motorola/simmanager/UserTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/motorola/simmanager/UserTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/simmanager/UserTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lcom/motorola/simmanager/UserTask$UserTaskResult;, "Lcom/motorola/simmanager/UserTask$UserTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mTask:Lcom/motorola/simmanager/UserTask;

    .line 482
    iput-object p2, p0, Lcom/motorola/simmanager/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    .line 483
    return-void
.end method
