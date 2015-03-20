.class public Lcom/android/contacts/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mCallTimeDisplayByDateTimeFormat:Z

.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mCnapFlex:I

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mEcidEnabled:Z

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/PhoneCallDetailsHelper;->DBG:Z

    .line 69
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/PhoneCallDetailsHelper;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/Context;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/android/contacts/calllog/CallTypeHelper;
    .param p3, "phoneNumberHelper"    # Lcom/android/contacts/calllog/PhoneNumberHelper;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTimeDisplayByDateTimeFormat:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 92
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 93
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 97
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    .line 98
    sget-boolean v0, Lcom/android/contacts/PhoneCallDetailsHelper;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCnapFlex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 103
    :cond_0
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 104
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTimeDisplayByDateTimeFormat:Z

    .line 109
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    .line 111
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 328
    const/16 v0, 0x12

    .line 329
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 330
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 331
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 332
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private isCnapDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cnapName"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "cnapDislpaly":Z
    iget v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    :cond_1
    const/4 v0, 0x1

    .line 352
    :cond_2
    sget-boolean v1, Lcom/android/contacts/PhoneCallDetailsHelper;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCnapDisplay  cnapDislpaly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCnapFlex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cnapName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contactName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 354
    :cond_3
    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "PhoneCallDetailsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "views"    # Lcom/android/contacts/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;
    .param p4, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "callCountText":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 304
    move-object v1, p3

    .line 305
    .local v1, "callDateText":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0254

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    const/4 v2, 0x0

    .line 314
    .local v2, "formattedCountText":Ljava/lang/CharSequence;
    if-eqz p4, :cond_2

    .line 315
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 316
    .local v3, "formattedDateText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 321
    :cond_0
    :goto_1
    iget-object v4, p1, Lcom/android/contacts/PhoneCallDetailsViews;->callCountView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v4, p1, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void

    .line 308
    .end local v1    # "callDateText":Ljava/lang/CharSequence;
    .end local v2    # "formattedCountText":Ljava/lang/CharSequence;
    .end local v3    # "formattedDateText":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p3

    .restart local v1    # "callDateText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 318
    .restart local v2    # "formattedCountText":Ljava/lang/CharSequence;
    :cond_2
    move-object v3, v1

    .line 319
    .restart local v3    # "formattedDateText":Ljava/lang/CharSequence;
    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;ZZ)V
    .locals 7
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;
    .param p3, "isVoicemail"    # Z
    .param p4, "isEmergency"    # Z

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v4, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0098

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    if-eqz p3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void

    .line 252
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    if-eqz p4, :cond_1

    .line 253
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x1040305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 256
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-eqz v3, :cond_3

    .line 260
    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/contacts/EcidContact;->getContactName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "ecidName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    move-object v2, v1

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 265
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_2
    move-object v2, v0

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 268
    .end local v1    # "ecidName":Ljava/lang/String;
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_3
    move-object v2, v0

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 272
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_4
    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 280
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 281
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/contacts/PhoneCallDetailsViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V
    .locals 25
    .param p1, "views"    # Lcom/android/contacts/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z
    .param p4, "isVoicemail"    # Z
    .param p5, "isEmergency"    # Z

    .prologue
    .line 117
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v3}, Lcom/android/contacts/calllog/CallTypeIconsView;->clear()V

    .line 118
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    array-length v12, v3

    .line 119
    .local v12, "count":I
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v12, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v18

    if-ge v0, v3, :cond_0

    .line 120
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    aget v4, v4, v18

    invoke-virtual {v3, v4}, Lcom/android/contacts/calllog/CallTypeIconsView;->add(I)V

    .line 119
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 122
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/4 v3, 0x3

    if-le v12, v3, :cond_6

    .line 127
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 132
    .local v10, "callCount":Ljava/lang/Integer;
    :goto_1
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/contacts/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v17

    .line 135
    .local v17, "highlightColor":Ljava/lang/Integer;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTimeDisplayByDateTimeFormat:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    const/16 v6, 0x11

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "dateText":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v13, v2}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 153
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 156
    .local v14, "displayName":Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 157
    .local v20, "isEcidDisplay":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-eqz v3, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/contacts/EcidContact;->getContactName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 165
    .local v16, "ecidInfoName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    move-object/from16 v14, v16

    .line 167
    const/16 v20, 0x1

    .line 172
    .end local v16    # "ecidInfoName":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 176
    :cond_2
    if-eqz p5, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x1040305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 182
    :cond_3
    const/16 v19, 0x0

    .line 183
    .local v19, "isCnapDisplay":Z
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/contacts/PhoneCallDetailsHelper;->isCnapDisplay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 185
    const/16 v19, 0x1

    .line 190
    :cond_4
    const/16 v23, 0x0

    .line 192
    .local v23, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v19, :cond_5

    if-nez p5, :cond_5

    if-nez p4, :cond_5

    if-nez v20, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 202
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 204
    .local v15, "displayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 205
    move-object/from16 v22, v15

    .line 212
    .local v22, "nameText":Ljava/lang/CharSequence;
    const/16 v24, 0x0

    .line 213
    .local v24, "numberText":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    .line 229
    .local v21, "labelText":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 230
    const/4 v11, 0x0

    .line 235
    .local v11, "cityidText":Ljava/lang/CharSequence;
    :goto_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->cityidView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void

    .line 129
    .end local v10    # "callCount":Ljava/lang/Integer;
    .end local v11    # "cityidText":Ljava/lang/CharSequence;
    .end local v13    # "dateText":Ljava/lang/CharSequence;
    .end local v14    # "displayName":Ljava/lang/CharSequence;
    .end local v15    # "displayNumber":Ljava/lang/CharSequence;
    .end local v17    # "highlightColor":Ljava/lang/Integer;
    .end local v19    # "isCnapDisplay":Z
    .end local v20    # "isEcidDisplay":Z
    .end local v21    # "labelText":Ljava/lang/CharSequence;
    .end local v22    # "nameText":Ljava/lang/CharSequence;
    .end local v23    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v24    # "numberText":Ljava/lang/CharSequence;
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "callCount":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 132
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 135
    .restart local v17    # "highlightColor":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    const/high16 v9, 0x40000

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_3

    .line 215
    .restart local v13    # "dateText":Ljava/lang/CharSequence;
    .restart local v14    # "displayName":Ljava/lang/CharSequence;
    .restart local v15    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v19    # "isCnapDisplay":Z
    .restart local v20    # "isEcidDisplay":Z
    .restart local v23    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 216
    .restart local v22    # "nameText":Ljava/lang/CharSequence;
    if-eqz v23, :cond_a

    .line 217
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/contacts/format/FormatUtils;->applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v24

    .line 224
    .restart local v24    # "numberText":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v21, v23

    .restart local v21    # "labelText":Ljava/lang/CharSequence;
    goto :goto_4

    .line 222
    .end local v21    # "labelText":Ljava/lang/CharSequence;
    .end local v24    # "numberText":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v24, v15

    .restart local v24    # "numberText":Ljava/lang/CharSequence;
    goto :goto_6

    .line 232
    .restart local v21    # "labelText":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .restart local v11    # "cityidText":Ljava/lang/CharSequence;
    goto :goto_5
.end method
