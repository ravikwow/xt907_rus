.class public Lcom/motorola/blur/setup/CongratsActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "CongratsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUNDLE_ACTIVITY_STARTED:Ljava/lang/String; = "com.motorola.blur.setup.activity_started"

.field private static final CUSTOM_CARRIER_TEXT:Ljava/lang/String; = "CustomCarrierText"

.field private static final TAG:Ljava/lang/String; = "SetupCA"


# instance fields
.field private mActivityRunning:Z

.field protected mDonePressed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    .line 38
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mActivityRunning:Z

    return-void
.end method

.method private GoNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/vnd.motorola.post_setup_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    :goto_0
    new-instance v1, Lcom/motorola/blur/setup/CongratsActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/motorola/blur/setup/CongratsActivity$1;-><init>(Lcom/motorola/blur/setup/CongratsActivity;Landroid/content/Context;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-void

    .line 232
    :cond_0
    const-string v1, "SetupCA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No special post-setup receiver available"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private launchLBS()V
    .locals 5

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "carrierLbsIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v1, "SetupCA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "No Carrier LBS receiver available"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0
.end method

.method private setPrivacyLink()V
    .locals 9

    .prologue
    .line 250
    const v6, 0x7f0c0025

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 251
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 252
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 254
    .local v1, "method":Landroid/text/method/MovementMethod;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 255
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    const v6, 0x7f080030

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 257
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 258
    .local v4, "start":I
    const v6, 0x7f080031

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "linkText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 261
    new-instance v6, Lcom/motorola/blur/setup/CongratsActivity$2;

    invoke-direct {v6, p0}, Lcom/motorola/blur/setup/CongratsActivity$2;-><init>(Lcom/motorola/blur/setup/CongratsActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    const/16 v8, 0x11

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 270
    return-void
.end method


# virtual methods
.method public launchGoogleSetup()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 209
    const-string v2, "SetupCA"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Launching AccountIntro"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.accounts.AccountIntro"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 213
    .local v1, "started":Z
    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "allowSkip"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    const/4 v1, 0x1

    .line 219
    :cond_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_2

    .line 136
    if-nez p2, :cond_1

    .line 137
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchGuidedTours()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "SetupCA"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Guided Tour not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 145
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 147
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_2
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_4

    .line 148
    if-nez p2, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->launchLBS()V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->launchGoogleSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 153
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 156
    :cond_4
    const/16 v1, 0xe

    if-ne p1, v1, :cond_6

    .line 157
    if-nez p2, :cond_5

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchGuidedTours()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "SetupCA"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Guided Tour not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 163
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 166
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 167
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 170
    :cond_6
    const-string v1, "SetupCA"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: Unexpected requestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 188
    :sswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 191
    :sswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->makeEmergencyCall()V

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x7f0c0003 -> :sswitch_0
        0x7f0c0026 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 46
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 47
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    const v7, 0x7f0c0012

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 52
    .local v6, "titleView":Landroid/widget/TextView;
    const v7, 0x7f0c0013

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hideConfigMenuItems()V

    .line 55
    const v7, 0x7f0c0003

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 56
    .local v3, "goButton":Landroid/widget/Button;
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isReady2GoInstalled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->setPrivacyLink()V

    .line 66
    const v7, 0x7f08002c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 68
    const v7, 0x7f080070

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v7, 0x7f0c0026

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 71
    .local v2, "ecallButton":Landroid/widget/Button;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v7, 0x7f08002d

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f020006

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 84
    .end local v2    # "ecallButton":Landroid/widget/Button;
    :goto_0
    const-string v7, "DeviceSetup"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 86
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 87
    const-string v7, "CustomCarrierText"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "carrierText":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 89
    const v7, 0x7f0c0024

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "customCarrierText":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v0    # "carrierText":Ljava/lang/String;
    .end local v1    # "customCarrierText":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hideBackButton()V

    .line 111
    .end local v3    # "goButton":Landroid/widget/Button;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-void

    .line 80
    .restart local v3    # "goButton":Landroid/widget/Button;
    .restart local v5    # "textView":Landroid/widget/TextView;
    .restart local v6    # "titleView":Landroid/widget/TextView;
    :cond_3
    const v7, 0x7f08002a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v7, 0x7f08002b

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    .end local v3    # "goButton":Landroid/widget/Button;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_4
    const v7, 0x1030055

    invoke-virtual {p0, v7}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 99
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 102
    if-eqz p1, :cond_5

    .line 103
    const-string v7, "com.motorola.blur.setup.activity_started"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/blur/setup/CongratsActivity;->mActivityRunning:Z

    .line 105
    :cond_5
    iget-boolean v7, p0, Lcom/motorola/blur/setup/CongratsActivity;->mActivityRunning:Z

    if-nez v7, :cond_2

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/motorola/blur/setup/CongratsActivity;->mActivityRunning:Z

    .line 107
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->launchLBS()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onDestroy()V

    .line 118
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 120
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 122
    .end local v0    # "pid":I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "com.motorola.blur.setup.activity_started"

    iget-boolean v1, p0, Lcom/motorola/blur/setup/CongratsActivity;->mActivityRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method
