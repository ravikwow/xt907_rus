.class Lcom/android/deskclock/AlarmAlert$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 48
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlert$2;->this$0:Lcom/android/deskclock/AlarmAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 54
    .local v0, "km":Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlert$2;->this$0:Lcom/android/deskclock/AlarmAlert;

    # invokes: Lcom/android/deskclock/AlarmAlert;->handleScreenOff(Landroid/app/KeyguardManager;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmAlert;->access$000(Lcom/android/deskclock/AlarmAlert;Landroid/app/KeyguardManager;)V

    .line 55
    return-void
.end method
