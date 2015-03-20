.class public Lcom/motorola/blur/setup/ServiceError;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "ServiceError.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RADIO_GROUP_STATE:Ljava/lang/String; = "radio_state"

.field private static final TAG:Ljava/lang/String; = "SetupSE"


# instance fields
.field private mRadios:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    return-void
.end method

.method private continueToNext()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceError;->mRadios:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 90
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isSetupHomeDisabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 78
    :cond_0
    const-string v1, "is_initial_setup_flow"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_initial_setup_flow"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected goBack()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceError;->goBack()V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceError;->continueToNext()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    const v1, 0x7f0c002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceError;->mRadios:Landroid/widget/RadioGroup;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceError;->mRadios:Landroid/widget/RadioGroup;

    const-string v2, "radio_state"

    const v3, 0x7f0c002d

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, "backButton":Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .end local v0    # "backButton":Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onDestroy()V

    .line 45
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "radio_state"

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceError;->mRadios:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method
