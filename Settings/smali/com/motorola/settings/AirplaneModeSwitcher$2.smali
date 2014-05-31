.class Lcom/motorola/settings/AirplaneModeSwitcher$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/AirplaneModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/AirplaneModeSwitcher;


# direct methods
.method constructor <init>(Lcom/motorola/settings/AirplaneModeSwitcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/settings/AirplaneModeSwitcher$2;->this$0:Lcom/motorola/settings/AirplaneModeSwitcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher$2;->this$0:Lcom/motorola/settings/AirplaneModeSwitcher;

    # invokes: Lcom/motorola/settings/AirplaneModeSwitcher;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/motorola/settings/AirplaneModeSwitcher;->access$000(Lcom/motorola/settings/AirplaneModeSwitcher;)V

    .line 57
    return-void
.end method
