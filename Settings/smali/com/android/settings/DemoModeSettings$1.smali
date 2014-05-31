.class final Lcom/android/settings/DemoModeSettings$1;
.super Ljava/lang/Object;
.source "DemoModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DemoModeSettings;->showMasterClearPasswordDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$passwordEditor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DemoModeSettings$1;->val$passwordEditor:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/PrivacySettings;->mMasterClearPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DemoModeSettings$1;->val$passwordEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/DemoModeSettings;->launchMasterClear(Landroid/content/Context;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    const v1, 0x7f0b004e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
