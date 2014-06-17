.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static final MMS_APP_PACKAGE:Ljava/lang/String;

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mConnectivityWaitTimeout:I

.field private static mContext:Landroid/content/Context;

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultMsgVibePatternId:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDynamicSettings:Landroid/content/SharedPreferences;

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableCcBccForGroupMms:Z

.field private static mEnableGroupMms:Z

.field private static mEnableMMSDeliveryReports:Z

.field private static mEnableMMSReadReports:Z

.field private static mEnableMultipartSMS:Z

.field private static mEnableSMSDeliveryReports:Z

.field private static mEnableSlideDuration:Z

.field private static mErrorCodesEnable:Z

.field private static mHipriEnabled:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mInServiceWaitTimeout:I

.field private static mIsContactPickerSupported:Z

.field private static mIsLocationAppAvailable:Ljava/lang/Boolean;

.field private static mIsLocationVCardMandatory:Z

.field private static mIsSmsEmailEnabled:Z

.field private static mIsVCardEnabled:Z

.field private static mLocationShareRunnable:Ljava/lang/Runnable;

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxSubjectLength:I

.field private static mMaxTextLength:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsAcceptHeader:Ljava/lang/String;

.field private static mMmsCountryCode:Ljava/lang/String;

.field private static mMmsDefaultApnName:Ljava/lang/String;

.field private static mMmsDisableRetryAfterServerTimeout:Z

.field private static mMmsEnabled:I

.field private static mMmsFromFormat:I

.field private static mMmsMaxPictureSizeForRetry:I

.field private static mMmsNoProgressTimeout:I

.field private static mMmsNotifyServerError:Z

.field private static mMmsNumberPlusPrefixEnabled:Z

.field private static mMmsTransferTimeoutVoiceCall:I

.field private static mMmsTransmissionTimeout:I

.field private static mNotifyWapMMSC:Z

.field private static mPriorityEnable:Z

.field private static mRecipientLimit:I

.field private static mRetryTimeout1:I

.field private static mRetryTimeout2:I

.field private static mRetryTimeout3:I

.field private static mRetryTimeout4:I

.field private static mSecondaryMmscSupport:Z

.field private static mShowEmailInAutocomplete:Z

.field private static mShowMessageGroupTypeWarningAvailable:Z

.field private static mShowNextInRecipientsEditor:Z

.field private static mShowSendButton:Z

.field private static mSignatureEnabled:Z

.field private static mSmsCharsRemainTilCounter:I

.field private static mSmsEmailConvertToMmsOnMultipleSegmentsEnabled:Z

.field private static mSmsToMmsTextThreshold:I

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mTransIdEnabled:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mWapRejectEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_APP_PACKAGE:Ljava/lang/String;

    .line 74
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 75
    sput v2, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 76
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 77
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 78
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 79
    sput-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 80
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 82
    sput-object v3, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 83
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 84
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 85
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 86
    const/16 v0, 0x1f4

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 87
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 88
    sput v5, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 89
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 90
    const v0, 0x1d4c0

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 91
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 92
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 93
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 100
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    .line 106
    sput v4, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 108
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    .line 109
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    .line 110
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    .line 111
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    .line 112
    sput v4, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    .line 117
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 120
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 121
    sput v5, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 122
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 124
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    .line 131
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    .line 134
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsVCardEnabled:Z

    .line 135
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsContactPickerSupported:Z

    .line 136
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mShowNextInRecipientsEditor:Z

    .line 137
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mShowSendButton:Z

    .line 138
    sput v4, Lcom/android/mms/MmsConfig;->mSmsCharsRemainTilCounter:I

    .line 139
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mPriorityEnable:Z

    .line 140
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsSmsEmailEnabled:Z

    .line 141
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSmsEmailConvertToMmsOnMultipleSegmentsEnabled:Z

    .line 142
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mShowEmailInAutocomplete:Z

    .line 145
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSignatureEnabled:Z

    .line 147
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mWapRejectEnabled:Z

    .line 150
    sput v1, Lcom/android/mms/MmsConfig;->mMmsFromFormat:I

    .line 151
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mHipriEnabled:Z

    .line 152
    const v0, 0x3a980

    sput v0, Lcom/android/mms/MmsConfig;->mMmsTransmissionTimeout:I

    .line 153
    const v0, 0x2bf20

    sput v0, Lcom/android/mms/MmsConfig;->mMmsNoProgressTimeout:I

    .line 154
    sput v1, Lcom/android/mms/MmsConfig;->mMmsMaxPictureSizeForRetry:I

    .line 181
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSecondaryMmscSupport:Z

    .line 182
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mMmsNotifyServerError:Z

    .line 183
    sput v1, Lcom/android/mms/MmsConfig;->mMmsTransferTimeoutVoiceCall:I

    .line 184
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mRetryTimeout1:I

    .line 185
    const v0, 0x493e0

    sput v0, Lcom/android/mms/MmsConfig;->mRetryTimeout2:I

    .line 186
    const v0, 0x927c0

    sput v0, Lcom/android/mms/MmsConfig;->mRetryTimeout3:I

    .line 187
    const v0, 0x1b7740

    sput v0, Lcom/android/mms/MmsConfig;->mRetryTimeout4:I

    .line 188
    const/16 v0, 0x4e20

    sput v0, Lcom/android/mms/MmsConfig;->mInServiceWaitTimeout:I

    .line 189
    const v0, 0xafc8

    sput v0, Lcom/android/mms/MmsConfig;->mConnectivityWaitTimeout:I

    .line 190
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mMmsNumberPlusPrefixEnabled:Z

    .line 191
    const-string v0, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    sput-object v0, Lcom/android/mms/MmsConfig;->mMmsAcceptHeader:Ljava/lang/String;

    .line 192
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->mMmsDefaultApnName:Ljava/lang/String;

    .line 193
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mMmsDisableRetryAfterServerTimeout:Z

    .line 194
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mErrorCodesEnable:Z

    .line 195
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mShowMessageGroupTypeWarningAvailable:Z

    .line 196
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableCcBccForGroupMms:Z

    .line 197
    sput-object v3, Lcom/android/mms/MmsConfig;->mMmsCountryCode:Ljava/lang/String;

    .line 204
    sput v2, Lcom/android/mms/MmsConfig;->mDefaultMsgVibePatternId:I

    .line 208
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsLocationVCardMandatory:Z

    .line 212
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    .line 215
    new-instance v0, Lcom/android/mms/MmsConfig$1;

    invoke-direct {v0}, Lcom/android/mms/MmsConfig$1;-><init>()V

    sput-object v0, Lcom/android/mms/MmsConfig;->mLocationShareRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    sput-object p0, Lcom/android/mms/MmsConfig;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 413
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 417
    :cond_1
    if-eq v0, v2, :cond_2

    .line 418
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 390
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    const-string v0, "4.4"

    return-object v0
.end method

.method public static getConnectivityWaitTimeout()I
    .locals 1

    .prologue
    .line 775
    sget v0, Lcom/android/mms/MmsConfig;->mConnectivityWaitTimeout:I

    return v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 334
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultVibrationPatternId()I
    .locals 1

    .prologue
    .line 966
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMsgVibePatternId:I

    return v0
.end method

.method public static getDynamic4DigitsEmailGatewayEnabled()Z
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getEmailGatewayFromSimCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    const-string v0, "gsm.sim.email.gateway"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnableMmsWhenDataDisabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    sget-object v3, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_mms_when_data_disabled"

    invoke-static {v3, v4, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 677
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getGroupMmsEnabled()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 350
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getInServiceWaitTimeout()I
    .locals 1

    .prologue
    .line 768
    sget v0, Lcom/android/mms/MmsConfig;->mInServiceWaitTimeout:I

    return v0
.end method

.method public static getIsLocationVCardMandatory()Z
    .locals 1

    .prologue
    .line 1019
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsLocationVCardMandatory:Z

    return v0
.end method

.method public static getIsVCardEnabled()Z
    .locals 1

    .prologue
    .line 630
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsVCardEnabled:Z

    return v0
.end method

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSNotifyServerError()Z
    .locals 1

    .prologue
    .line 732
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mMmsNotifyServerError:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 318
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 322
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 346
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 281
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 382
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    .prologue
    .line 402
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 2

    .prologue
    .line 330
    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 354
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsAcceptHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsAcceptHeader:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsDefaultApnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsDefaultApnName:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsDisableRetryAfterServerTimeout()Z
    .locals 1

    .prologue
    .line 795
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mMmsDisableRetryAfterServerTimeout:Z

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 274
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMmsFromFormat()I
    .locals 1

    .prologue
    .line 662
    sget v0, Lcom/android/mms/MmsConfig;->mMmsFromFormat:I

    return v0
.end method

.method public static getMmsMaximumPictureSizeForRetry()I
    .locals 2

    .prologue
    .line 741
    sget v1, Lcom/android/mms/MmsConfig;->mMmsMaxPictureSizeForRetry:I

    .line 743
    .local v1, "size":I
    const/16 v0, 0x2f44

    .line 745
    .local v0, "reservedSize":I
    if-gt v1, v0, :cond_0

    .line 746
    const/4 v1, 0x0

    .line 749
    :cond_0
    return v1
.end method

.method public static getMmsNoProgressTimeout()I
    .locals 1

    .prologue
    .line 756
    sget v0, Lcom/android/mms/MmsConfig;->mMmsNoProgressTimeout:I

    return v0
.end method

.method public static getMmsNumberPlusPrefixEnabled()Z
    .locals 1

    .prologue
    .line 779
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mMmsNumberPlusPrefixEnabled:Z

    return v0
.end method

.method public static getMmsSecondaryMmscEnabled()Z
    .locals 1

    .prologue
    .line 736
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSecondaryMmscSupport:Z

    return v0
.end method

.method public static getMmsTransferTimeoutForVoiceCall()I
    .locals 1

    .prologue
    .line 728
    sget v0, Lcom/android/mms/MmsConfig;->mMmsTransferTimeoutVoiceCall:I

    return v0
.end method

.method public static getMmsTransmissionTimeout()I
    .locals 1

    .prologue
    .line 761
    sget v0, Lcom/android/mms/MmsConfig;->mMmsTransmissionTimeout:I

    return v0
.end method

.method public static getMmsWapRejectEnable()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mWapRejectEnabled:Z

    return v0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    return v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 378
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 326
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getRetryTimeout1()I
    .locals 1

    .prologue
    .line 711
    sget v0, Lcom/android/mms/MmsConfig;->mRetryTimeout1:I

    return v0
.end method

.method public static getRetryTimeout2()I
    .locals 1

    .prologue
    .line 715
    sget v0, Lcom/android/mms/MmsConfig;->mRetryTimeout2:I

    return v0
.end method

.method public static getRetryTimeout3()I
    .locals 1

    .prologue
    .line 719
    sget v0, Lcom/android/mms/MmsConfig;->mRetryTimeout3:I

    return v0
.end method

.method public static getRetryTimeout4()I
    .locals 1

    .prologue
    .line 723
    sget v0, Lcom/android/mms/MmsConfig;->mRetryTimeout4:I

    return v0
.end method

.method public static getSMSCharacterLimit(Z)I
    .locals 1
    .param p0, "hasNon7BitEncoding"    # Z

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "limit":I
    if-nez p0, :cond_0

    .line 869
    mul-int/lit8 v0, v0, 0x2

    .line 871
    :cond_0
    return v0
.end method

.method public static getSMSCharacterLimitAvailable()Z
    .locals 2

    .prologue
    .line 883
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getSMSCharacterLimit(Z)I

    move-result v0

    .line 888
    .local v0, "limit":I
    const/4 v1, 0x0

    return v1
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 370
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getShowEmailInAutocompleteList()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mShowEmailInAutocomplete:Z

    return v0
.end method

.method public static getShowMessageGroupTypeWarning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 820
    invoke-static {}, Lcom/android/mms/MmsConfig;->getShowMessageGroupTypeWarningAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/MmsConfig;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v2, "ShowMessageGroupTypeWarning"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShowMessageGroupTypeWarningAvailable()Z
    .locals 1

    .prologue
    .line 806
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mShowMessageGroupTypeWarningAvailable:Z

    return v0
.end method

.method public static getShowNextInRecipientsEditor()Z
    .locals 1

    .prologue
    .line 646
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mShowNextInRecipientsEditor:Z

    return v0
.end method

.method public static getShowSendButton()Z
    .locals 1

    .prologue
    .line 650
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mShowSendButton:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsCharsRemainTilCounter()I
    .locals 1

    .prologue
    .line 654
    sget v0, Lcom/android/mms/MmsConfig;->mSmsCharsRemainTilCounter:I

    return v0
.end method

.method public static getSmsEmailConvertToMmsOnMultipleSegmentsEnabled()Z
    .locals 1

    .prologue
    .line 854
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSmsEmailConvertToMmsOnMultipleSegmentsEnabled:Z

    return v0
.end method

.method public static getSmsEmailConvertToMmsOnNon7BitEncodingEnabled()Z
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method public static getSmsEmailSubjectWithSlashEnabled()Z
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public static getSmsForce7BitEncoding()Z
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x1

    return v0
.end method

.method public static getSmsMmsErrorCodesEnable()Z
    .locals 1

    .prologue
    .line 799
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mErrorCodesEnable:Z

    return v0
.end method

.method public static getSmsMmsPriorityEnable()Z
    .locals 1

    .prologue
    .line 835
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mPriorityEnable:Z

    return v0
.end method

.method public static getSmsMmsSignatureEnable()Z
    .locals 1

    .prologue
    .line 638
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSignatureEnabled:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 270
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string v0, "MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc/mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sput-object p0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    .line 232
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/mms/MmsConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 234
    const-string v0, "MsgDynamicSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->mDynamicSettings:Landroid/content/SharedPreferences;

    .line 235
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->mLocationShareRunnable:Ljava/lang/Runnable;

    const-string v2, "locationShareRunnable"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isCDMA()Z
    .locals 2

    .prologue
    .line 685
    sget-object v0, Lcom/android/mms/MmsConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCcBccEnabled()Z
    .locals 1

    .prologue
    .line 813
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableCcBccForGroupMms:Z

    return v0
.end method

.method public static isContactPickerEnabled()Z
    .locals 1

    .prologue
    .line 634
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsContactPickerSupported:Z

    return v0
.end method

.method public static isGSM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 689
    sget-object v1, Lcom/android/mms/MmsConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocationAppAvailable()Z
    .locals 1

    .prologue
    .line 1013
    sget-object v0, Lcom/android/mms/MmsConfig;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMMSHIPRIEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    const-string v1, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/mms/MmsConfig;->mHipriEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmsEmailEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 844
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 850
    .local v0, "isEmailGatewayValid":Z
    :goto_0
    sget-boolean v3, Lcom/android/mms/MmsConfig;->mIsSmsEmailEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isEmailGatewayValid":Z
    :cond_0
    move v0, v2

    .line 844
    goto :goto_0

    .restart local v0    # "isEmailGatewayValid":Z
    :cond_1
    move v1, v2

    .line 850
    goto :goto_1
.end method

.method public static isSmsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "defaultSmsApplication":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSmsPromoDismissed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "sms_promo_dismissed_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isWorldPhone()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 693
    const-string v3, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "stringValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 696
    .local v0, "result":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v11, 0x7f050000

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 440
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "mms_config"

    invoke-static {v4, v8}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 444
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 445
    .local v5, "tag":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 610
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 613
    .end local v5    # "tag":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 615
    .local v2, "errorStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 616
    const-string v2, "uaProfUrl"

    .line 619
    :cond_1
    if-eqz v2, :cond_2

    .line 620
    const-string v8, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "err":Ljava/lang/String;
    const-string v8, "MmsConfig"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v1    # "err":Ljava/lang/String;
    :cond_2
    return-void

    .line 448
    .end local v2    # "errorStr":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 451
    .local v6, "text":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_4

    .line 452
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 456
    :cond_4
    const-string v8, "MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v8, "name"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 460
    const-string v8, "bool"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 462
    const-string v8, "enabledMMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 463
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_2
    sput v8, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 603
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 463
    goto :goto_2

    .line 464
    :cond_6
    :try_start_3
    const-string v8, "enabledTransID"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 465
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 605
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 610
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 466
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v8, "enabledNotifyWapMMSC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 467
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 607
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 608
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 610
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v8, "aliasEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 469
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 610
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8

    .line 470
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v8, "allowAttachAudio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 471
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 472
    :cond_a
    const-string v8, "enableMultipartSMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 473
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    goto/16 :goto_0

    .line 474
    :cond_b
    const-string v8, "enableSlideDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 475
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    goto/16 :goto_0

    .line 476
    :cond_c
    const-string v8, "enableMMSReadReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 477
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    goto/16 :goto_0

    .line 478
    :cond_d
    const-string v8, "enableSMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 479
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    goto/16 :goto_0

    .line 480
    :cond_e
    const-string v8, "enableMMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 481
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    goto/16 :goto_0

    .line 482
    :cond_f
    const-string v8, "enableGroupMms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 483
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    goto/16 :goto_0

    .line 484
    :cond_10
    const-string v8, "ErrorCodesEnable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 485
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mErrorCodesEnable:Z

    goto/16 :goto_0

    .line 486
    :cond_11
    const-string v8, "ShowMessageGroupTypeWarningAvailable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 487
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mShowMessageGroupTypeWarningAvailable:Z

    goto/16 :goto_0

    .line 488
    :cond_12
    const-string v8, "EnableCcBccForGroupMms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 489
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableCcBccForGroupMms:Z

    goto/16 :goto_0

    .line 492
    :cond_13
    const-string v8, "ContactPickerEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 493
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mIsContactPickerSupported:Z

    goto/16 :goto_0

    .line 494
    :cond_14
    const-string v8, "IsVCardEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 495
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mIsVCardEnabled:Z

    goto/16 :goto_0

    .line 496
    :cond_15
    const-string v8, "SignatureEnable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 497
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mSignatureEnabled:Z

    goto/16 :goto_0

    .line 498
    :cond_16
    const-string v8, "WapRejectEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 499
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mWapRejectEnabled:Z

    goto/16 :goto_0

    .line 500
    :cond_17
    const-string v8, "ShowNextInRecipientsEditor"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 501
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mShowNextInRecipientsEditor:Z

    goto/16 :goto_0

    .line 502
    :cond_18
    const-string v8, "ShowSendButton"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 503
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mShowSendButton:Z

    goto/16 :goto_0

    .line 504
    :cond_19
    const-string v8, "PriorityEnable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 505
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mPriorityEnable:Z

    goto/16 :goto_0

    .line 506
    :cond_1a
    const-string v8, "hipriEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 507
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mHipriEnabled:Z

    goto/16 :goto_0

    .line 508
    :cond_1b
    const-string v8, "MmsNotifyServerError"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 509
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mMmsNotifyServerError:Z

    goto/16 :goto_0

    .line 510
    :cond_1c
    const-string v8, "sms_pref_key_to_email"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 511
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mIsSmsEmailEnabled:Z

    goto/16 :goto_0

    .line 512
    :cond_1d
    const-string v8, "SmsEmailConvertToMmsOnMultipleSegmentsEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 513
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mSmsEmailConvertToMmsOnMultipleSegmentsEnabled:Z

    goto/16 :goto_0

    .line 514
    :cond_1e
    const-string v8, "ShowEmailInAutocomplete"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 515
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mShowEmailInAutocomplete:Z

    goto/16 :goto_0

    .line 517
    :cond_1f
    const-string v8, "IsLocationVCardMandatory"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 518
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mIsLocationVCardMandatory:Z

    goto/16 :goto_0

    .line 522
    :cond_20
    const-string v8, "int"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 524
    const-string v8, "maxMessageSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 525
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 526
    :cond_21
    const-string v8, "maxImageHeight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 527
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 528
    :cond_22
    const-string v8, "maxImageWidth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 529
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 530
    :cond_23
    const-string v8, "defaultSMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 531
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 532
    :cond_24
    const-string v8, "defaultMMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 533
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 534
    :cond_25
    const-string v8, "minMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 535
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 536
    :cond_26
    const-string v8, "maxMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 537
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 538
    :cond_27
    const-string v8, "recipientLimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 539
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 540
    sget v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v8, :cond_0

    .line 541
    const v8, 0x7fffffff

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    goto/16 :goto_0

    .line 543
    :cond_28
    const-string v8, "httpSocketTimeout"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 544
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 545
    :cond_29
    const-string v8, "minimumSlideElementDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 546
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 547
    :cond_2a
    const-string v8, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 548
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 549
    :cond_2b
    const-string v8, "aliasMinChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 550
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 551
    :cond_2c
    const-string v8, "aliasMaxChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 552
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 553
    :cond_2d
    const-string v8, "smsToMmsTextThreshold"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 554
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto/16 :goto_0

    .line 555
    :cond_2e
    const-string v8, "maxMessageTextSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 556
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    goto/16 :goto_0

    .line 557
    :cond_2f
    const-string v8, "maxSubjectLength"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 558
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    goto/16 :goto_0

    .line 559
    :cond_30
    const-string v8, "MmsFromFormat"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 560
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMmsFromFormat:I

    goto/16 :goto_0

    .line 561
    :cond_31
    const-string v8, "mms_retry_timeout1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 562
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRetryTimeout1:I

    goto/16 :goto_0

    .line 563
    :cond_32
    const-string v8, "mms_retry_timeout2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 564
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRetryTimeout2:I

    goto/16 :goto_0

    .line 565
    :cond_33
    const-string v8, "mms_retry_timeout3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 566
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRetryTimeout3:I

    goto/16 :goto_0

    .line 567
    :cond_34
    const-string v8, "mms_retry_timeout4"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 568
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRetryTimeout4:I

    goto/16 :goto_0

    .line 569
    :cond_35
    const-string v8, "MmsTransferTimeoutForVoiceCall"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 570
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMmsTransferTimeoutVoiceCall:I

    goto/16 :goto_0

    .line 571
    :cond_36
    const-string v8, "MmsMaxPictureSizeForRetry"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 572
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMmsMaxPictureSizeForRetry:I

    goto/16 :goto_0

    .line 573
    :cond_37
    const-string v8, "SmsCharsRemainTilCounter"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 574
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mSmsCharsRemainTilCounter:I

    goto/16 :goto_0

    .line 577
    :cond_38
    const-string v8, "default_msg_vibe_pattern"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 578
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultMsgVibePatternId:I

    goto/16 :goto_0

    .line 581
    :cond_39
    const-string v8, "string"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 583
    const-string v8, "userAgent"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 584
    sput-object v6, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 585
    :cond_3a
    const-string v8, "uaProfTagName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 586
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 587
    :cond_3b
    const-string v8, "uaProfUrl"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 588
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 589
    :cond_3c
    const-string v8, "httpParams"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 590
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 591
    :cond_3d
    const-string v8, "httpParamsLine1Key"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 592
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 593
    :cond_3e
    const-string v8, "emailGatewayNumber"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 594
    sput-object v6, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    goto/16 :goto_0

    .line 595
    :cond_3f
    const-string v8, "MmsDefaultApnName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 596
    sput-object v6, Lcom/android/mms/MmsConfig;->mMmsDefaultApnName:Ljava/lang/String;

    goto/16 :goto_0

    .line 597
    :cond_40
    const-string v8, "mmsCountryCode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 598
    sput-object v6, Lcom/android/mms/MmsConfig;->mMmsCountryCode:Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 434
    :cond_1
    return-void
.end method

.method public static readEmailGatewayFromSimCard()Z
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public static setMmsTestSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 985
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 987
    .local v0, "BUILD_TYPE":Ljava/lang/String;
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const-string v1, "string"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    const-string v1, "userAgent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    sput-object p2, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 994
    :cond_2
    const-string v1, "uaProfUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 995
    sput-object p2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto :goto_0

    .line 996
    :cond_3
    const-string v1, "smsToMmsTextThreshold"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 997
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto :goto_0

    .line 998
    :cond_4
    const-string v1, "maxMessageSize"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 999
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto :goto_0

    .line 1000
    :cond_5
    const-string v1, "emailGatewayNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    sput-object p2, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setShowMessageGroupTypeWarning(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 828
    sget-object v0, Lcom/android/mms/MmsConfig;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowMessageGroupTypeWarning"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 829
    return-void
.end method

.method public static setSmsEmailGatewayNumber(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    sput-object p0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 931
    :cond_0
    return-void
.end method
