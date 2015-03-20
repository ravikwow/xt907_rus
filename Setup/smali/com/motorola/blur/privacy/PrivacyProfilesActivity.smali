.class public Lcom/motorola/blur/privacy/PrivacyProfilesActivity;
.super Landroid/app/Activity;
.source "PrivacyProfilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mGroup:Landroid/widget/RadioGroup;

.field private mProfilePref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "PrivacyProfilesActivity"

    sput-object v0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    .line 37
    iput-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mProfilePref:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyProfilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setProfileSetting(I)V

    return-void
.end method

.method private getProfileSetting()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mProfilePref:Landroid/content/SharedPreferences;

    const-string v2, "privacy_profile_name"

    const-string v3, "standard"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "profile":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "standard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "support"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v1, "advanced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method private setLink(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "stringRes"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    move-object v0, p3

    .line 88
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 89
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 90
    .local v2, "method":Landroid/text/method/MovementMethod;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "tv":Landroid/widget/TextView;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 92
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    const v6, 0x7f0800da

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "linkText":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v3, p2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 94
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 95
    new-instance v6, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;

    invoke-direct {v6, p0, v3, v0}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;-><init>(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;Landroid/content/res/Resources;Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 107
    :cond_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    return-void
.end method

.method private setProfileSetting(I)V
    .locals 2
    .param p1, "buttonId"    # I

    .prologue
    .line 144
    const-string v0, "standard"

    .line 145
    .local v0, "profileName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/motorola/blur/setup/SetupUtility;->setPrivacyProfile(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 161
    return-void

    .line 147
    :pswitch_1
    const-string v0, "none"

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    const-string v0, "standard"

    .line 151
    goto :goto_0

    .line 153
    :pswitch_3
    const-string v0, "support"

    .line 154
    goto :goto_0

    .line 156
    :pswitch_4
    const-string v0, "advanced"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f0c004b
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0053

    if-ne v0, v1, :cond_0

    .line 115
    new-instance v0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;-><init>(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v6, 0x7f030016

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    const v6, 0x7f0c0053

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v6, 0x7f0c004a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mGroup:Landroid/widget/RadioGroup;

    .line 50
    const v6, 0x7f0c004d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 51
    .local v2, "rb_adv":Landroid/widget/RadioButton;
    const v6, 0x7f0c004b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 52
    .local v5, "rb_std":Landroid/widget/RadioButton;
    const v6, 0x7f0c0050

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 53
    .local v4, "rb_spt":Landroid/widget/RadioButton;
    const v6, 0x7f0c0052

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 54
    .local v3, "rb_opo":Landroid/widget/RadioButton;
    new-instance v0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$1;-><init>(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;)V

    .line 59
    .local v0, "clk_lst":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-string v6, "PRIVACY_PROFILE_PREFS"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->mProfilePref:Landroid/content/SharedPreferences;

    .line 65
    invoke-direct {p0}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->getProfileSetting()V

    .line 67
    const v6, 0x7f0c004e

    const v7, 0x7f0800df

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_TITLE_KEY"

    const v10, 0x7f0800e8

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_DESCRIPTION_KEY"

    const v10, 0x7f0800e9

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setLink(IILandroid/content/Intent;)V

    .line 70
    const v7, 0x7f0c004c

    const v8, 0x7f0800e1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-virtual {v6, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    const-string v9, "PROFILE_TITLE_KEY"

    const v10, 0x7f0800ea

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "PROFILE_DESCRIPTION_KEY"

    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0800ec

    :goto_0
    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v7, v8, v6}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setLink(IILandroid/content/Intent;)V

    .line 74
    const v6, 0x7f0c004f

    const v7, 0x7f0800dd

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_TITLE_KEY"

    const v10, 0x7f0800e6

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_DESCRIPTION_KEY"

    const v10, 0x7f0800e7

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setLink(IILandroid/content/Intent;)V

    .line 77
    const v6, 0x7f0c0051

    const v7, 0x7f0800db

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_TITLE_KEY"

    const v10, 0x7f0800e4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PROFILE_DESCRIPTION_KEY"

    const v10, 0x7f0800e5

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setLink(IILandroid/content/Intent;)V

    .line 82
    new-instance v6, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;

    invoke-direct {v6, p0, v11}, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;-><init>(Landroid/app/Activity;Z)V

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void

    .line 70
    :cond_0
    const v6, 0x7f0800eb

    goto :goto_0
.end method
