.class final Lcom/motorola/settings/BatterySaverUtil$1;
.super Ljava/lang/Object;
.source "BatterySaverUtil.java"

# interfaces
.implements Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/BatterySaverUtil;->getBatterySaverPreference(Landroid/app/Activity;)Lcom/motorola/settings/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v1, "battery_saver_pref_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/motorola/settings/BatterySaverUtil;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 59
    const v1, 0x7f0b0018

    new-instance v2, Lcom/motorola/settings/BatterySaverUtil$1$1;

    invoke-direct {v2, p0}, Lcom/motorola/settings/BatterySaverUtil$1$1;-><init>(Lcom/motorola/settings/BatterySaverUtil$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/motorola/settings/BatterySaverUtil;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 67
    # getter for: Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/motorola/settings/BatterySaverUtil;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 69
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
