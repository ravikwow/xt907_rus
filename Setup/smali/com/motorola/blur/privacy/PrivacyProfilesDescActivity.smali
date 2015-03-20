.class public Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;
.super Landroid/app/Activity;
.source "PrivacyProfilesDescActivity.java"


# static fields
.field static final INTENT_EXTRA_PROFILE_DESCRIPTION_KEY:Ljava/lang/String; = "PROFILE_DESCRIPTION_KEY"

.field static final INTENT_EXTRA_PROFILE_TITLE_KEY:Ljava/lang/String; = "PROFILE_TITLE_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v5, 0x7f030017

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    const v5, 0x7f0c0003

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 30
    .local v2, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity$1;

    invoke-direct {v5, p0}, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity$1;-><init>(Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "PROFILE_TITLE_KEY"

    const v6, 0x7f0800c0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 41
    .local v4, "titleRes":I
    const-string v5, "PROFILE_DESCRIPTION_KEY"

    const v6, 0x7f0800e3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "descriptionRes":I
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    const v5, 0x7f0c0054

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    new-instance v5, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;

    invoke-direct {v5, p0, v7}, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;-><init>(Landroid/app/Activity;Z)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method
