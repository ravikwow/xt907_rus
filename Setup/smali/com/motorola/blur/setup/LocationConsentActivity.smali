.class public Lcom/motorola/blur/setup/LocationConsentActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "LocationConsentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIDE_BACK_BUTTON:Ljava/lang/String; = "hide_back"

.field private static final TAG:Ljava/lang/String; = "SetupLCA"


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mBackground:I

.field private mHideBack:Z

.field private mLocationCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 22
    iput v0, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackground:I

    .line 23
    iput-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    .line 25
    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    .line 27
    iput-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    return-void
.end method

.method private continueToNext()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 60
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->goToNextActivity()V

    .line 61
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private goToNextActivity()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const/16 v1, 0x43

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 73
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->onBackPressed()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->continueToNext()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 38
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    .line 40
    const v1, 0x7f0c0034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    .line 41
    iget-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackground:I

    .line 46
    const-string v1, "hide_back"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    .line 47
    iget-boolean v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method
