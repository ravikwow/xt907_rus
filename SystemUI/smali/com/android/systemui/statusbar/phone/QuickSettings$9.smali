.class Lcom/android/systemui/statusbar/phone/QuickSettings$9;
.super Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$1;)V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 10
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    const/4 v5, 0x0

    .line 537
    move-object v3, p2

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 538
    .local v3, "wifiState":Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;
    const v4, 0x7f080005

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 539
    .local v1, "iv":Landroid/widget/ImageView;
    iget v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    const v4, 0x7f08005b

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 541
    .local v0, "iov":Landroid/widget/ImageView;
    iget v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->activityIconId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->activityIconId:I

    if-nez v4, :cond_0

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->setActivity(Landroid/view/View;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;)V

    .line 548
    const v4, 0x7f08004c

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 549
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0082

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    aput-object v4, v9, v5

    const/4 v5, 0x1

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    :goto_1
    aput-object v4, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 554
    return-void

    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_0
    move v4, v5

    .line 542
    goto :goto_0

    .line 550
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method
