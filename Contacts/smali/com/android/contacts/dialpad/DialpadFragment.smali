.class public Lcom/android/contacts/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final ACTION_DIALER_FOREGROUND_STATUS:Ljava/lang/String;

.field private final EXTRA_DIALER_ISFOREGROUND:Ljava/lang/String;

.field private fragmentVisibilty:Z

.field private lastQueryDigits:Ljava/lang/String;

.field private mAdCDMAFeatureOn:Z

.field private mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mClearDigitsOnStop:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonContainer:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadPressCount:I

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mFragmentView:Landroid/view/View;

.field private final mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mIsAdFtrOn:Z

.field private mIsCallBeenPlaced:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mQwertySupported:Z

.field private mSmartDialerFtrFlag:Z

.field private mSmartDialerShown:Z

.field private mStartedFromNewIntent:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoiceMailTag:Ljava/lang/String;

.field private mWasEmptyBeforeTextChange:Z

.field private skipNextQuery:Z

.field private tone_relative_volume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    .line 102
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DEBUG:Z

    .line 103
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    .line 104
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 113
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    .line 180
    const-string v0, "com.android.phone.ACTION_PHONE_FOREGROUND_STATUS"

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ACTION_DIALER_FOREGROUND_STATUS:Ljava/lang/String;

    .line 182
    const-string v0, "dailer_is_foreground"

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->EXTRA_DIALER_ISFOREGROUND:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    .line 193
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .line 194
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 195
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 207
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 252
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 2030
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    .line 2033
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->skipNextQuery:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    return v0
.end method

.method private configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 521
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 526
    :cond_0
    const/4 v3, 0x0

    .line 530
    .local v3, "needToShowDialpadChooser":Z
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v2

    .line 531
    .local v2, "isAddCallMode":Z
    if-nez v2, :cond_3

    .line 536
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    .line 537
    .local v1, "digitsFilled":Z
    iget-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v4, :cond_1

    if-nez v1, :cond_3

    .line 539
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 544
    :cond_2
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    const/4 v3, 0x1

    .line 552
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "digitsFilled":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 453
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 456
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 457
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 461
    .local v9, "data":Ljava/lang/String;
    iput-boolean v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 462
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "converted":Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 492
    .end local v8    # "converted":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_0
    return v0

    .line 467
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 468
    .local v10, "type":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v13

    const-string v4, "number_key"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 474
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 476
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 480
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    move v0, v13

    .line 492
    goto :goto_0

    .line 484
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 926
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 928
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    return-object v0
.end method

.method private getSendSmsIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2014
    return-object v1
.end method

.method private handleDialButtonClickWithEmptyDigits()V
    .locals 2

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1420
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1428
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1446
    :cond_2
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method private initSmartDialer(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2081
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04008a

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;-><init>(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .line 2083
    const v0, 0x7f0600c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2084
    if-eqz v0, :cond_0

    .line 2085
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2086
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2087
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2090
    :cond_0
    const v0, 0x7f0600c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/dialpad/DialpadFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/dialpad/DialpadFragment$3;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
    return-void
.end method

.method private isAdFtrOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2020
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calling_gsm_ad_enabled"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2021
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2022
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 2026
    :cond_0
    :goto_0
    return v0

    .line 2023
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2024
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    goto :goto_0
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 507
    :cond_1
    return v1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1916
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1921
    :cond_0
    :goto_0
    return v0

    .line 1917
    :catch_0
    move-exception v1

    .line 1919
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 933
    packed-switch p1, :pswitch_data_0

    .line 974
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 975
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 976
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 979
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 980
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 983
    :cond_0
    return-void

    .line 935
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "length":I
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 938
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 941
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 944
    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 947
    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 950
    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 953
    :pswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 956
    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 959
    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 962
    :pswitch_9
    invoke-direct {p0, v4, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 965
    :pswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 968
    :pswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static launchCustomVMActivity(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2192
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .line 2194
    if-eqz v0, :cond_0

    .line 2198
    :try_start_0
    const-string v3, "VMChooserUtil"

    const-string v4, "getCustomVoiceMailIntent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2200
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 2201
    check-cast v0, Landroid/content/Intent;

    .line 2202
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2209
    :goto_0
    return v0

    .line 2205
    :catch_0
    move-exception v0

    .line 2206
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Exception while starting Custom VM Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v2

    .line 2209
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2185
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    return-void
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1982
    const-string v0, ""

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1983
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1984
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1798
    .line 1800
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1801
    if-eqz v1, :cond_0

    .line 1802
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1807
    :cond_0
    :goto_0
    return v0

    .line 1804
    :catch_0
    move-exception v1

    .line 1805
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1786
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1787
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1791
    :cond_0
    :goto_0
    return v0

    .line 1788
    :catch_0
    move-exception v1

    .line 1789
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1814
    const/4 v0, 0x0

    .line 1816
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1817
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1821
    :cond_0
    :goto_0
    return v0

    .line 1818
    :catch_0
    move-exception v1

    .line 1819
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .param p1, "tone"    # I

    .prologue
    .line 1455
    const/16 v0, 0x96

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    .line 1456
    return-void
.end method

.method private playTone(II)V
    .locals 4

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1484
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1485
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1492
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit v1

    goto :goto_0

    .line 1498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1497
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1498
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 1964
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1965
    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 1978
    .local v0, "lastCallArgs":Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/common/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 1979
    return-void
.end method

.method private removePreviousDigitIfPossible()V
    .locals 4

    .prologue
    .line 1264
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1265
    .local v1, "editable":Landroid/text/Editable;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1266
    .local v0, "currentPosition":I
    if-lez v0, :cond_0

    .line 1267
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1268
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1270
    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 3

    .prologue
    .line 1762
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendIsDialerPauseIntent(Z)V
    .locals 4
    .param p1, "isPause"    # Z

    .prologue
    const/4 v3, 0x1

    .line 914
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 915
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_PHONE_FOREGROUND_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, "mIntent":Landroid/content/Intent;
    if-ne p1, v3, :cond_0

    .line 917
    const-string v2, "dailer_is_foreground"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 921
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 922
    return-void

    .line 919
    :cond_0
    const-string v2, "dailer_is_foreground"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "dialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v2, v0, p2, v3}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 574
    .local v1, "digits":Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 579
    .end local v1    # "digits":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 6
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    .line 582
    const/16 v5, 0xc

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 584
    .local v1, "buttonIds":[I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 585
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/dialpad/DialpadImageButton;

    invoke-virtual {v5, p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setOnPressedListener(Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;)V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v3    # "id":I
    :cond_0
    const v5, 0x7f0600ad

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 592
    const v5, 0x7f0600b7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    return-void

    .line 582
    nop

    :array_0
    .array-data 4
        0x7f0600ad
        0x7f0600ae
        0x7f0600af
        0x7f0600b0
        0x7f0600b1
        0x7f0600b2
        0x7f0600b3
        0x7f0600b4
        0x7f0600b5
        0x7f0600b7
        0x7f0600b6
        0x7f0600b8
    .end array-data
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 833
    const v0, 0x7f06015d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 834
    const v1, 0x7f060159

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 835
    const v2, 0x7f06015b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 836
    const v3, 0x7f06015c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 840
    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 845
    :cond_0
    const v4, 0x7f06015a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 849
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 850
    if-eqz v5, :cond_2

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 852
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 861
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    :cond_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 863
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 864
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 865
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 854
    :cond_2
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 855
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 870
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 871
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 881
    const/4 v6, -0x1

    if-eq v0, v6, :cond_5

    .line 882
    if-le v0, v1, :cond_6

    .line 889
    :goto_2
    if-eqz v1, :cond_4

    .line 891
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    invoke-static {v1, v0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 907
    :goto_3
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 897
    :cond_4
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 898
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 901
    :cond_5
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 904
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 905
    invoke-static {v0, v0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_2
.end method

.method private showDialpadChooser(Z)V
    .locals 6

    .prologue
    const v5, 0x7f060139

    const v4, 0x7f0600c5

    const v1, 0x7f0600c1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1536
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    :goto_0
    return-void

    .line 1540
    :cond_0
    if-eqz p1, :cond_9

    .line 1541
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1542
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1551
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1552
    if-eqz v0, :cond_3

    .line 1553
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_4

    .line 1557
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1559
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1560
    if-eqz v0, :cond_5

    .line 1561
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1565
    if-eqz v0, :cond_6

    .line 1566
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1571
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_7

    .line 1576
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1578
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1545
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1581
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1582
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    :cond_b
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1590
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1591
    if-eqz v0, :cond_c

    .line 1592
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_d

    .line 1596
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_e

    .line 1600
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    :cond_e
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    if-eqz v0, :cond_f

    .line 1604
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleList(Landroid/view/View;Z)V

    .line 1609
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1584
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private static showWait(IILjava/lang/String;)Z
    .locals 3
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "digits"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x0

    .line 1930
    if-ne p0, p1, :cond_3

    .line 1932
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return v0

    .line 1935
    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1938
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1947
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1941
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1945
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0
.end method

.method private smartDialerInputChange(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2050
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2051
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    if-nez v1, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputDigits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2055
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6

    .line 2057
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->skipNextQuery:Z

    if-eqz v1, :cond_4

    .line 2058
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "smartDialerInputChange(): skip next query "

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2059
    :cond_3
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->skipNextQuery:Z

    .line 2072
    :goto_1
    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    goto :goto_0

    .line 2061
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2062
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip currquery =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastQueryDigits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2065
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_1

    .line 2069
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 2070
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_1
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1510
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1511
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    monitor-exit v1

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1514
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1515
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private toggleList(Landroid/view/View;Z)V
    .locals 11

    .prologue
    const v10, 0x7f0600be

    const v9, 0x7f0600ac

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2111
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    if-nez v0, :cond_0

    .line 2165
    :goto_0
    return-void

    .line 2112
    :cond_0
    const/4 v2, 0x0

    .line 2113
    const v0, 0x7f0600c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2114
    const v1, 0x7f0600c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2115
    const v3, 0x7f0600c7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2116
    const v4, 0x7f0600c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2117
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2118
    const v2, 0x7f060139

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2121
    :cond_1
    sget-boolean v5, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2122
    :cond_2
    if-eqz p2, :cond_7

    .line 2123
    if-eqz v2, :cond_3

    .line 2124
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2127
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    :cond_4
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2131
    if-eqz v3, :cond_5

    .line 2132
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    :cond_5
    if-eqz v4, :cond_6

    .line 2135
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2138
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 2139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    .line 2141
    const v0, 0x108026d

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2164
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto/16 :goto_0

    .line 2144
    :cond_7
    if-eqz v2, :cond_8

    .line 2145
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2147
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2148
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2150
    :cond_9
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2152
    if-eqz v3, :cond_a

    .line 2153
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    :cond_a
    if-eqz v4, :cond_b

    .line 2156
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2158
    :cond_b
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2159
    iput-boolean v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    .line 2161
    const v0, 0x1080274

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1887
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1889
    .local v0, "digitsNotEmpty":Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1893
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1894
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1904
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1905
    return-void

    .end local v0    # "digitsNotEmpty":Z
    :cond_1
    move v0, v2

    .line 1887
    goto :goto_0

    .line 1900
    .restart local v0    # "digitsNotEmpty":Z
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .param p1, "newDigits"    # Ljava/lang/String;

    .prologue
    .line 1860
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1861
    .local v0, "anchor":I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 1863
    .local v3, "point":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1864
    .local v5, "selectionStart":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1866
    .local v4, "selectionEnd":I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1867
    .local v1, "digits":Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1868
    if-ne v5, v4, :cond_0

    .line 1871
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1881
    :goto_0
    return-void

    .line 1873
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1875
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1878
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1879
    .local v2, "len":I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 289
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 293
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    if-eqz v0, :cond_2

    .line 295
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->smartDialerInputChange(Ljava/lang/CharSequence;)V

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 301
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 261
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 1273
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->getVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1279
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVVM(Landroid/content/Context;)V

    .line 1281
    return-void
.end method

.method public constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1159
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1160
    const/4 v2, 0x0

    .line 1168
    :goto_0
    return-object v2

    .line 1163
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1164
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1165
    .local v1, "menu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    const v3, 0x7f100004

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1166
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1167
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1168
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1351
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    if-eqz v0, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1357
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->hasDigitsChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 1374
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1376
    const v0, 0x7f0b01fe

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1378
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1382
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 1384
    :cond_5
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 1385
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1390
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    if-eqz v1, :cond_6

    .line 1391
    const-string v1, "called_by"

    const-string v2, "BY_DIALER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "Assisted Dialing: 12keypad dialer: placecall(): has put call_by intent extra"

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1397
    :cond_6
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer;->getSmartDialer()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1398
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer;->getQwertyKeypad()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1399
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    .line 1407
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1408
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    goto/16 :goto_0

    .line 1385
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 1401
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    goto :goto_2

    .line 1404
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    goto :goto_2
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2170
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "start to query voicemain number"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2171
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 2174
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2177
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 2179
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1151
    :pswitch_0
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick() event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1131
    :pswitch_1
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1135
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    .line 1140
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 1144
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_0

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x7f0600bb
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    const-string v2, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    .line 331
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v2, :cond_1

    .line 332
    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    .line 334
    :cond_1
    sget-boolean v2, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): mSmartDialerFtrFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQwertySupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 337
    :cond_2
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 338
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    .line 340
    return-void

    .line 311
    .end local v1    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "Vibrate control bool missing."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 812
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 820
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "fragmentView":Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-nez v8, :cond_7

    .line 347
    const v8, 0x7f04003c

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 351
    :goto_0
    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 355
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 357
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x7f0600ba

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 358
    const v8, 0x7f0600bb

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 361
    iget-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v8, :cond_8

    .line 362
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    new-array v10, v5, [Landroid/text/InputFilter;

    new-instance v11, Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;

    invoke-direct {v11}, Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;-><init>()V

    aput-object v11, v10, v9

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 363
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/high16 v10, 0x80000

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 373
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 375
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "hyphenation_feature_enabled"

    invoke-static {v8, v10, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_0

    move v5, v9

    .line 381
    .local v5, "numberFormattingEnabled":Z
    :cond_0
    if-nez v5, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v10, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v8, v10}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 386
    :cond_1
    const v8, 0x7f0600ad

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 387
    .local v6, "oneButton":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 388
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 392
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/high16 v8, 0x42600000

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v10

    float-to-int v4, v8

    .line 393
    .local v4, "minCellSize":I
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v8, v4

    .line 394
    .local v0, "cellCount":I
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v2, v8, v0

    .line 395
    .local v2, "fakeMenuItemWidth":I
    const v8, 0x7f0600be

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    .line 398
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 399
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v8, v2, v10, v2, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 403
    :cond_3
    const v8, 0x7f0600bf

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 404
    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 405
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 412
    :goto_2
    const v8, 0x7f0600bd

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 413
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 414
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 418
    :cond_4
    const v8, 0x7f0600ac

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 421
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v8, :cond_a

    .line 422
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 428
    :goto_3
    iget-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v8, :cond_6

    .line 429
    sget-boolean v8, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v8, :cond_5

    const-string v8, "onCreateView(): smart dialer feature is on"

    invoke-static {v8}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 430
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->initSmartDialer(Landroid/view/View;)V

    .line 435
    :cond_6
    const v8, 0x7f0600c0

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 436
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 438
    return-object v3

    .line 349
    .end local v0    # "cellCount":I
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "fakeMenuItemWidth":I
    .end local v4    # "minCellSize":I
    .end local v5    # "numberFormattingEnabled":Z
    .end local v6    # "oneButton":Landroid/view/View;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_7
    const v8, 0x7f04003d

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 365
    .restart local v7    # "r":Landroid/content/res/Resources;
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v10, Lcom/android/contacts/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/contacts/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 368
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->setSingleLine()V

    goto/16 :goto_1

    .line 408
    .restart local v0    # "cellCount":I
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "fakeMenuItemWidth":I
    .restart local v4    # "minCellSize":I
    .restart local v5    # "numberFormattingEnabled":Z
    .restart local v6    # "oneButton":Landroid/view/View;
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto :goto_2

    .line 424
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "enter onDestroyView"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 793
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 795
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->destroyCleanUp()V

    .line 799
    :cond_1
    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .line 800
    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 801
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1724
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1726
    iget v0, v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1727
    packed-switch v0, :pswitch_data_0

    .line 1750
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick: unexpected itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :goto_0
    return-void

    .line 1732
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1739
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1746
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 1727
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const v3, 0x7f0600bb

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 990
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 994
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 996
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    move v0, v1

    .line 1032
    :goto_0
    return v0

    .line 999
    :cond_0
    const/16 v0, 0x52

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 1002
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 1006
    :cond_1
    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->setQwertyKeypad(Z)V

    .line 1009
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1012
    packed-switch p2, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v2

    .line 1032
    goto :goto_0

    .line 1015
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_4

    .line 1016
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    if-eqz v0, :cond_4

    .line 1017
    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    move v0, v1

    .line 1018
    goto :goto_0

    .line 1022
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_1

    .line 1026
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    move v0, v1

    .line 1027
    goto :goto_0

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1174
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1176
    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 1256
    :cond_0
    :goto_0
    return v0

    .line 1178
    :sswitch_0
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1182
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1188
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1190
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1192
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1193
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->launchCustomVMActivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    .line 1200
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    .line 1209
    :cond_4
    if-eqz v1, :cond_5

    .line 1210
    const v1, 0x7f0b0200

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    .line 1212
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_request_during_airplane_mode"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :cond_5
    const v1, 0x7f0b01ff

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    .line 1217
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_not_ready"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1222
    goto :goto_0

    .line 1226
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1227
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1233
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 1234
    iget v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto/16 :goto_0

    .line 1242
    :sswitch_3
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v0, v1

    .line 1243
    goto/16 :goto_0

    .line 1246
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1247
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1252
    goto/16 :goto_0

    .line 1176
    :sswitch_data_0
    .sparse-switch
        0x7f0600ad -> :sswitch_1
        0x7f0600b7 -> :sswitch_2
        0x7f0600bb -> :sswitch_3
        0x7f0600bd -> :sswitch_0
        0x7f0600bf -> :sswitch_4
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1848
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1830
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1842
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1832
    :pswitch_0
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1835
    :pswitch_1
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getSendSmsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1830
    :pswitch_data_0
    .packed-switch 0x7f06015a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 732
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 735
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 737
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 740
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 742
    iput v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 744
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 749
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 753
    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 755
    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->cleanup()V

    .line 758
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 764
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    if-eqz v1, :cond_2

    .line 766
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v1, :cond_2

    .line 767
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->pauseCleanUp()V

    .line 774
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->sendIsDialerPauseIntent(Z)V

    .line 776
    return-void

    .line 749
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 830
    :cond_1
    return-void
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1043
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressed(). view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 1053
    :cond_1
    if-eqz p2, :cond_3

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1104
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_0
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 1125
    :cond_2
    :goto_1
    return-void

    .line 1056
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1060
    :pswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1064
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1068
    :pswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1072
    :pswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1076
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1080
    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1084
    :pswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1088
    :pswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1092
    :pswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1096
    :pswitch_a
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1100
    :pswitch_b
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1110
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1111
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 1112
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-gez v0, :cond_5

    .line 1118
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "mKeyPressCount become negative."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 1120
    iput v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto :goto_1

    .line 1121
    :cond_5
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-nez v0, :cond_2

    .line 1122
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    .line 1054
    :pswitch_data_0
    .packed-switch 0x7f0600ad
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 605
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 607
    const-string v8, "Dialpad.onResume"

    invoke-static {v8}, Lcom/android/contacts/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/util/StopWatch;

    move-result-object v4

    .line 612
    .local v4, "stopWatch":Lcom/android/contacts/util/StopWatch;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.android.phone.PhoneAp.mIsInBatteryCooldown"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v2, v6

    .line 614
    .local v2, "isInCooldown":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 615
    const-string v6, "In Battery Cooldown mode, finish..."

    invoke-static {v6}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 728
    :goto_1
    return-void

    .end local v2    # "isInCooldown":Z
    :cond_0
    move v2, v7

    .line 612
    goto :goto_0

    .line 623
    .restart local v2    # "isInCooldown":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 625
    const-string v8, "qloc"

    invoke-virtual {v4, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dtmf_tone"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_6

    :goto_2
    iput-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 631
    const-string v6, "dtwd"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 634
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v6}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    .line 636
    const-string v6, "hptc"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 640
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 641
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 643
    :try_start_1
    new-instance v6, Landroid/media/ToneGenerator;

    const/16 v9, 0x8

    iget v10, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    invoke-direct {v6, v9, v10}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :cond_2
    :goto_3
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    const-string v6, "tg"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 652
    iput v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 654
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 655
    .local v3, "parent":Landroid/app/Activity;
    instance-of v6, v3, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v6, :cond_3

    .line 658
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 661
    :cond_3
    const-string v6, "fdin"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 668
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 670
    const-string v6, "tm"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 682
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0b008a

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 684
    .local v1, "hint":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd

    invoke-direct {v6, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 685
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 695
    .end local v1    # "hint":Landroid/text/SpannableString;
    :goto_4
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    if-eqz v6, :cond_4

    .line 697
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v6, :cond_4

    .line 698
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v6}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->resumeQuery()V

    .line 705
    :cond_4
    const-string v6, "hnt"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 707
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 709
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isAdFtrOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    .line 711
    const-string v6, "bes"

    invoke-virtual {v4, v6}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 713
    sget-object v6, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const/16 v8, 0x32

    invoke-virtual {v4, v6, v8}, Lcom/android/contacts/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 719
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v6

    if-nez v6, :cond_5

    .line 720
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    invoke-direct {p0, v6, v8}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleList(Landroid/view/View;Z)V

    .line 724
    :cond_5
    iput-boolean v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 726
    invoke-direct {p0, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->sendIsDialerPauseIntent(Z)V

    goto/16 :goto_1

    .end local v3    # "parent":Landroid/app/Activity;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    move v6, v7

    .line 628
    goto/16 :goto_2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v6, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught while creating local tone generator: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3

    .line 649
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 688
    .restart local v3    # "parent":Landroid/app/Activity;
    .restart local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 692
    invoke-direct {p0, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 807
    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 808
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 599
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 601
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 780
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 781
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_0

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 783
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 785
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 265
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 274
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "fragmentVisible"    # Z

    .prologue
    .line 1994
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerFtrFlag:Z

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    if-eqz v0, :cond_0

    .line 1996
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->resumeQuery()V

    .line 2004
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    .line 2006
    return-void

    .line 1998
    :cond_1
    if-nez p1, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->pauseCleanUp()V

    goto :goto_0
.end method

.method public setSkipNextQuery()V
    .locals 1

    .prologue
    .line 2041
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setSkipNextQuery() called"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2042
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->skipNextQuery:Z

    .line 2043
    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 557
    return-void
.end method

.method public showList(Z)V
    .locals 1
    .param p1, "showList"    # Z

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2100
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSmartDialerShown:Z

    if-eq p1, v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleList(Landroid/view/View;Z)V

    .line 2104
    :cond_0
    return-void
.end method
