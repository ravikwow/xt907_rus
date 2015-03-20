.class public Lcom/motorola/blur/privacy/TosActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "TosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;
    }
.end annotation


# static fields
.field public static final EXTERNAL_LAUNCH:Ljava/lang/String; = "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

.field private static final READER_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TOSSetup"

.field public static final TOS_TEXT:Ljava/lang/String; = "TosText"


# instance fields
.field private mDisableBack:Z

.field private mFinishActivity:Z

.field private mFromExternalApp:Z

.field private mGatheringCheck:Landroid/widget/CheckBox;

.field private mNextButton:Landroid/widget/Button;

.field private mSystemUpdateCase:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/motorola/blur/privacy/TosActivity;->mNextButton:Landroid/widget/Button;

    .line 57
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z

    .line 58
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z

    .line 59
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    .line 60
    iput-object v1, p0, Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/privacy/TosActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/privacy/TosActivity;->launchReader(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/privacy/TosActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/privacy/TosActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/blur/privacy/TosActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/privacy/TosActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/blur/privacy/TosActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/TosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method private initWidgets(Z)V
    .locals 21
    .param p1, "checked"    # Z

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 114
    .local v13, "res":Landroid/content/res/Resources;
    const/high16 v17, 0x7f0c0000

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 115
    .local v4, "backButton":Landroid/widget/Button;
    const v17, 0x7f0c0001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 117
    .local v11, "nextButton":Landroid/widget/Button;
    const-string v17, "DeviceSetup"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 118
    .local v15, "settings":Landroid/content/SharedPreferences;
    const-string v17, "BlurServiceSlientRegistrationSystemUpdateRequest"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z

    .line 119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 123
    const v17, 0x7f080024

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/motorola/blur/privacy/TosActivity;->mNextButton:Landroid/widget/Button;

    .line 126
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 129
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_2
    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 133
    const v17, 0x7f08002e

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_3
    const v17, 0x7f0c0063

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 137
    .local v16, "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    .line 138
    .local v10, "method":Landroid/text/method/MovementMethod;
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 139
    .local v14, "sb":Landroid/text/SpannableStringBuilder;
    const v17, 0x7f08001e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "content":Ljava/lang/String;
    const v17, 0x7f0800b7

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "link":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-virtual {v14, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    new-instance v18, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;

    sget-boolean v17, Lcom/motorola/blur/privacy/TosActivity;->mSilentRegistrationRequired:Z

    if-eqz v17, :cond_5

    const v17, 0x7f08001b

    :goto_0
    const v19, 0x7f080069

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;-><init>(Lcom/motorola/blur/privacy/TosActivity;II)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    const/16 v20, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 149
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 151
    const v17, 0x7f0c0065

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "tv":Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 152
    .restart local v16    # "tv":Landroid/widget/TextView;
    const v17, 0x7f0800b4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    const v17, 0x7f0800b5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    new-instance v14, Landroid/text/SpannableStringBuilder;

    .end local v14    # "sb":Landroid/text/SpannableStringBuilder;
    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 155
    .restart local v14    # "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v14, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    invoke-virtual {v14, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 157
    const v17, 0x7f0800b6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "content2":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v17, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;

    const v18, 0x7f08001c

    const v19, 0x7f08006a

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;-><init>(Lcom/motorola/blur/privacy/TosActivity;II)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 162
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 166
    const v17, 0x7f0c0064

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 168
    .local v6, "check":Landroid/widget/CheckBox;
    new-instance v17, Lcom/motorola/blur/privacy/TosActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/privacy/TosActivity$1;-><init>(Lcom/motorola/blur/privacy/TosActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const-string v17, "DeviceSetup"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 174
    .local v12, "prefs":Landroid/content/SharedPreferences;
    if-eqz v12, :cond_6

    const-string v17, "DataCollection"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    :goto_1
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;

    .line 177
    const v17, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "check":Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 179
    .restart local v6    # "check":Landroid/widget/CheckBox;
    new-instance v17, Lcom/motorola/blur/privacy/TosActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/privacy/TosActivity$2;-><init>(Lcom/motorola/blur/privacy/TosActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 187
    sget-boolean v17, Lcom/motorola/blur/privacy/TosActivity;->mSilentRegistrationRequired:Z

    if-nez v17, :cond_4

    .line 188
    const v17, 0x7f0c0058

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/setup/ProgressBadge;

    .line 189
    .local v5, "badge":Lcom/motorola/blur/setup/ProgressBadge;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .end local v5    # "badge":Lcom/motorola/blur/setup/ProgressBadge;
    :cond_4
    return-void

    .line 143
    .end local v6    # "check":Landroid/widget/CheckBox;
    .end local v8    # "content2":Ljava/lang/String;
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    const v17, 0x7f080019

    goto/16 :goto_0

    .line 174
    .restart local v6    # "check":Landroid/widget/CheckBox;
    .restart local v8    # "content2":Ljava/lang/String;
    .restart local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    const/16 v17, 0x0

    goto :goto_1
.end method

.method private launchReader(II)V
    .locals 2
    .param p1, "titleId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 336
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 109
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 347
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    new-instance v0, Lcom/motorola/blur/privacy/TosActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/privacy/TosActivity$3;-><init>(Lcom/motorola/blur/privacy/TosActivity;Landroid/view/View;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/motorola/blur/privacy/TosActivity;->mSilentRegistrationRequired:Z

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "act":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iput-boolean v3, p0, Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z

    .line 74
    :cond_0
    const-string v2, "DisableCancel"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 75
    iput-boolean v3, p0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    .line 78
    .end local v0    # "act":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lcom/motorola/blur/privacy/TosActivity;->initWidgets(Z)V

    .line 79
    iget-boolean v2, p0, Lcom/motorola/blur/privacy/TosActivity;->mDisableBack:Z

    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hideBackButton()V

    .line 82
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onStart()V

    .line 89
    new-instance v0, Lcom/motorola/blur/setup/SetupUtility$showNavBarButtonTask;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupUtility$showNavBarButtonTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
