.class Lcom/android/mms/concurrent/TaskManager$2;
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
    .line 83
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$2;->this$0:Lcom/android/mms/concurrent/TaskManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BackGround"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    .local v0, "backgroundThread":Ljava/lang/Thread;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 87
    return-object v0
.end method
