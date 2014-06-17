.class Lcom/android/mms/concurrent/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/concurrent/TaskManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/concurrent/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/mms/concurrent/TaskManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$1;->this$0:Lcom/android/mms/concurrent/TaskManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "LowPriority"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    .local v0, "lowPriorityThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 74
    return-object v0
.end method
