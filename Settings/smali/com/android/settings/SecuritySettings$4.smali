.class Lcom/android/settings/SecuritySettings$4;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->showBluetoothMFBDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 999
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_mfb_enabled_when_locked"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    # getter for: Lcom/android/settings/SecuritySettings;->mEnableBluetoothMultifunction:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    # getter for: Lcom/android/settings/SecuritySettings;->mEnableBluetoothMultifunction:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1001
    :cond_0
    return-void
.end method
