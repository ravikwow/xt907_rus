.class Lcom/android/deskclock/AlarmAlert$1;
.super Landroid/os/Handler;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlert;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlert$1;->this$0:Lcom/android/deskclock/AlarmAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlert$1;->this$0:Lcom/android/deskclock/AlarmAlert;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager;

    # invokes: Lcom/android/deskclock/AlarmAlert;->handleScreenOff(Landroid/app/KeyguardManager;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmAlert;->access$000(Lcom/android/deskclock/AlarmAlert;Landroid/app/KeyguardManager;)V

    .line 44
    return-void
.end method
