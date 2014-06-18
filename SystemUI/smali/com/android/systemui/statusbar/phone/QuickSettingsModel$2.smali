.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->startObserving()V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onNextAlarmChanged()V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rebindMediaRouterAsCurrentUser()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 478
    return-void
.end method
