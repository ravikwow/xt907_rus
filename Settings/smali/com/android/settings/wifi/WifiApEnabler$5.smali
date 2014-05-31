.class Lcom/android/settings/wifi/WifiApEnabler$5;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->displayStartupNotice(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$5;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler$5;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$5;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApEnabler;->access$1000(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_display_starup_warning"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 542
    return-void

    :cond_0
    move v0, v1

    .line 536
    goto :goto_0
.end method
