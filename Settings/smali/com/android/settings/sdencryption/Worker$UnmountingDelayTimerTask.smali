.class Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;
.super Ljava/util/TimerTask;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountingDelayTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/Worker;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/Worker;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;->this$0:Lcom/android/settings/sdencryption/Worker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;->this$0:Lcom/android/settings/sdencryption/Worker;

    const/4 v1, 0x1

    const/4 v2, 0x2

    # invokes: Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/sdencryption/Worker;->access$000(Lcom/android/settings/sdencryption/Worker;ZI)V

    .line 72
    return-void
.end method
