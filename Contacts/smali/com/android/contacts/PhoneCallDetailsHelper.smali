.class public Lcom/android/contacts/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mCityIDEnabled:Z

.field private mCnapFlex:I

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mEcidEnabled:Z

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/PhoneCallDetailsHelper;->DBG:Z

    .line 73
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/PhoneCallDetailsHelper;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "callTypeHelper"    # Lcom/android/contacts/calllog/CallTypeHelper;
    .param p4, "phoneNumberHelper"    # Lcom/android/contacts/calllog/PhoneNumberHelper;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCityIDEnabled:Z

    .line 102
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 103
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 104
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 108
    const v1, 0x7f090005

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    .line 109
    sget-boolean v1, Lcom/android/contacts/PhoneCallDetailsHelper;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCnapFlex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 113
    :cond_0
    const-string v1, "ro.debuggable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 114
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "ftr_cnap"

    iget v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    .line 116
    sget-boolean v1, Lcom/android/contacts/PhoneCallDetailsHelper;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read ftr_cnap from shared preference, mCnapFlex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCnapFlex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 119
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {p1}, Lcom/motorola/contacts/util/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    .line 120
    iget-boolean v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/motorola/contacts/util/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCityIDEnabled:Z

    .line 121
    :cond_2
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 322
    const/16 v0, 0x12

    .line 323
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 324
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 325
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 326
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
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
    .line 341
    const/4 v0, 0x0

    .line 342
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

    .line 344
    :cond_1
    const/4 v0, 0x1

    .line 346
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

    .line 348
    :cond_3
    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 354
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

    .line 355
    return-void
.end method

.method private setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "views"    # Lcom/android/contacts/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;
    .param p4, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b01d8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_1

    .line 312
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 317
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p1, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 306
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p3

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 314
    :cond_1
    move-object v0, v1

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;ZZ)V
    .locals 8
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;
    .param p3, "isVoicemail"    # Z
    .param p4, "isEmergency"    # Z

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v4, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v5, p2, Lcom/android/contacts/PhoneCallDetails;->numberPresentation:I

    iget-object v6, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    if-eqz p3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-void

    .line 254
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    if-eqz p4, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x104030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 258
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/contacts/util/EcidContact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "ecidName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    move-object v2, v1

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 264
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

    .line 273
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_4
    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 281
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 282
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/contacts/PhoneCallDetailsViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V
    .locals 23
    .param p1, "views"    # Lcom/android/contacts/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z
    .param p4, "isVoicemail"    # Z
    .param p5, "isEmergency"    # Z

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/CallTypeIconsView;->clear()V

    .line 129
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    array-length v10, v2

    .line 130
    .local v10, "count":I
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 131
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    aget v3, v3, v16

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeIconsView;->add(I)V

    .line 130
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 133
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 137
    const/4 v2, 0x3

    if-le v10, v2, :cond_7

    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 143
    .local v9, "callCount":Ljava/lang/Integer;
    :goto_1
    if-eqz p3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v15

    .line 147
    .local v15, "highlightColor":Ljava/lang/Integer;
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x40000

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 154
    .local v11, "dateText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v11, v15}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 157
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 160
    .local v12, "displayName":Ljava/lang/CharSequence;
    if-eqz p4, :cond_1

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 164
    :cond_1
    if-eqz p5, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x104030b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 170
    :cond_2
    const/16 v17, 0x0

    .line 171
    .local v17, "isCnapDisplay":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;->isCnapDisplay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 173
    const/16 v17, 0x1

    .line 178
    :cond_3
    const/16 v18, 0x0

    .line 179
    .local v18, "isEcidDisplay":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-eqz v2, :cond_4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/contacts/util/EcidContact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "ecidInfoName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    move-object v12, v14

    .line 186
    const/16 v18, 0x1

    .line 193
    .end local v14    # "ecidInfoName":Ljava/lang/String;
    :cond_4
    const/16 v21, 0x0

    .line 195
    .local v21, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v17, :cond_5

    if-nez p5, :cond_5

    if-nez p4, :cond_5

    if-nez v18, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 206
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberPresentation:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 210
    .local v13, "displayNumber":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    move-object/from16 v20, v13

    .line 223
    .local v20, "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mEcidEnabled:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCityIDEnabled:Z

    if-eqz v2, :cond_9

    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 224
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 229
    .local v22, "numberText":Ljava/lang/CharSequence;
    :goto_3
    const/16 v19, 0x0

    .line 235
    .local v19, "labelText":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    return-void

    .line 140
    .end local v9    # "callCount":Ljava/lang/Integer;
    .end local v11    # "dateText":Ljava/lang/CharSequence;
    .end local v12    # "displayName":Ljava/lang/CharSequence;
    .end local v13    # "displayNumber":Ljava/lang/CharSequence;
    .end local v15    # "highlightColor":Ljava/lang/Integer;
    .end local v17    # "isCnapDisplay":Z
    .end local v18    # "isEcidDisplay":Z
    .end local v19    # "labelText":Ljava/lang/CharSequence;
    .end local v20    # "nameText":Ljava/lang/CharSequence;
    .end local v21    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v22    # "numberText":Ljava/lang/CharSequence;
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "callCount":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 143
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 226
    .restart local v11    # "dateText":Ljava/lang/CharSequence;
    .restart local v12    # "displayName":Ljava/lang/CharSequence;
    .restart local v13    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v15    # "highlightColor":Ljava/lang/Integer;
    .restart local v17    # "isCnapDisplay":Z
    .restart local v18    # "isEcidDisplay":Z
    .restart local v20    # "nameText":Ljava/lang/CharSequence;
    .restart local v21    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_9
    const/16 v22, 0x0

    .restart local v22    # "numberText":Ljava/lang/CharSequence;
    goto :goto_3

    .line 231
    .end local v20    # "nameText":Ljava/lang/CharSequence;
    .end local v22    # "numberText":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v20, v12

    .line 232
    .restart local v20    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v22, v13

    .line 233
    .restart local v22    # "numberText":Ljava/lang/CharSequence;
    move-object/from16 v19, v21

    .restart local v19    # "labelText":Ljava/lang/CharSequence;
    goto :goto_4

    .line 238
    :cond_b
    const/4 v2, 0x0

    goto :goto_5
.end method
