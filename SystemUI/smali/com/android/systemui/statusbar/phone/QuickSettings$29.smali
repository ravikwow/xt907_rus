.class Lcom/android/systemui/statusbar/phone/QuickSettings$29;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$29;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    const/4 v1, 0x0

    .line 1349
    const v2, 0x7f08005c

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1350
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1353
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 1354
    return-void

    .line 1353
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
