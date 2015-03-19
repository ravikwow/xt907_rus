.class Lcom/android/settings/AirplaneModeSwitcher$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitcher$2;->this$0:Lcom/android/settings/AirplaneModeSwitcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 52
    const-string v0, "AirplaneModeSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentObserver.onChange, selfChange is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitcher$2;->this$0:Lcom/android/settings/AirplaneModeSwitcher;

    # invokes: Lcom/android/settings/AirplaneModeSwitcher;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitcher;->access$000(Lcom/android/settings/AirplaneModeSwitcher;)V

    .line 54
    return-void
.end method
