.class Lcom/android/settings/WirelessSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->registerUpdateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "phoneState":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mMobileNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 373
    .end local v0    # "phoneState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v0    # "phoneState":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mMobileNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method
