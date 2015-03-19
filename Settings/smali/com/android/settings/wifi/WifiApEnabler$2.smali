.class Lcom/android/settings/wifi/WifiApEnabler$2;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v0, 0x0

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 439
    .local v0, "isAirplaneMode":Z
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 441
    if-nez v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$preference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$value:Ljava/lang/Object;

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 449
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 450
    return-void
.end method
