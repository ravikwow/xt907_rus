.class public Lcom/android/contacts/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$4;,
        Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$DialAction;,
        Lcom/android/contacts/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DTMF_CHARS:[C

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final DIALER_BUTTON_LEFT:Ljava/lang/String;

.field private final DIALER_BUTTON_RIGHT:Ljava/lang/String;

.field private fragmentVisibilty:Z

.field private lastQueryDigits:Ljava/lang/String;

.field private mAdCDMAFeatureOn:Z

.field private mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

.field private mAdditionalButtonsRow:Landroid/view/View;

.field private mButton_left_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field private mButton_right_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mExcludeVoicemail:Z

.field private mFragmentView:Landroid/view/View;

.field private mIntentWithData:Z

.field private mIsAdFtrOn:Z

.field private mIsCallBeenPlaced:Z

.field private mIsNumberBeenDialed:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mLeftButton:Landroid/widget/ImageView;

.field private mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

.field private mMenuButton:Landroid/view/View;

.field private mMessageBtnFtrFlag:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mQwertySupported:Z

.field private mRightButton:Landroid/widget/ImageView;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoiceMailTag:Ljava/lang/String;

.field private mWasEmptyBeforeTextChange:Z

.field private tone_relative_volume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    .line 122
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    .line 123
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    .line 231
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->DTMF_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 134
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 206
    const-string v0, "dialer_button_left"

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->DIALER_BUTTON_LEFT:Ljava/lang/String;

    .line 207
    const-string v0, "dialer_button_right"

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->DIALER_BUTTON_RIGHT:Ljava/lang/String;

    .line 222
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mExcludeVoicemail:Z

    .line 228
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 241
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    .line 244
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 256
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    .line 261
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 265
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    .line 2450
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/DialpadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVVMIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1211
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1212
    const/4 v2, 0x0

    .line 1220
    :goto_0
    return-object v2

    .line 1215
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1216
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1217
    .local v1, "menu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    const v3, 0x7f100007

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1218
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1219
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1220
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 534
    iput-boolean v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIntentWithData:Z

    .line 535
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 538
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 539
    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 543
    .local v8, "data":Ljava/lang/String;
    iput-boolean v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 544
    invoke-direct {p0, v8, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iput-boolean v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIntentWithData:Z

    move v0, v11

    .line 574
    .end local v8    # "data":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :goto_0
    return v0

    .line 548
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 549
    .local v9, "type":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 555
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 557
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 561
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIntentWithData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4
    move v0, v12

    .line 574
    goto :goto_0

    .line 566
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v10    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAddToContactIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 983
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "digits":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 988
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.contacts.ACTION_ADD_CONTACT_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getDialerActionButton()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2314
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2315
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "dialer_button_left"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2316
    .local v0, "button_left_id":I
    const-string v3, "dialer_button_right"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2318
    .local v1, "button_right_id":I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 2319
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getLeftButtonDefaultValue()I

    move-result v0

    .line 2320
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getRightButtonDefaultValue()I

    move-result v1

    .line 2322
    :cond_1
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->values()[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_left_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 2323
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->values()[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    move-result-object v3

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_right_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 2324
    return-void
.end method

.method private getLeftButtonDefaultValue()I
    .locals 1

    .prologue
    .line 2298
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SEARCH:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private getRightButtonDefaultValue()I
    .locals 2

    .prologue
    .line 2303
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v1, :cond_0

    .line 2304
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SENDMESSAGE:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 2310
    .local v0, "defaultAction":Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    return v1

    .line 2305
    .end local v0    # "defaultAction":Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoiceCommandSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICECOMMAND:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .restart local v0    # "defaultAction":Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    goto :goto_0

    .line 2308
    .end local v0    # "defaultAction":Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    :cond_1
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICEMAIL:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .restart local v0    # "defaultAction":Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    goto :goto_0
.end method

.method private getSendSmsIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2049
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2050
    return-object v1
.end method

.method private static getVoiceDialIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2055
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2056
    return-object v0
.end method

.method private initSmartDialer(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2138
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400a5

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/dialpad/SmartDialerAdapter;-><init>(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 2140
    const v0, 0x7f0700d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2141
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2142
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2143
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 2146
    const v1, 0x7f0700cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment$3;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2151
    return-void
.end method

.method private isAdFtrOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2207
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calling_gsm_ad_enabled"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2208
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2209
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 2213
    :cond_0
    :goto_0
    return v0

    .line 2210
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2211
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    goto :goto_0
.end method

.method public static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 625
    :cond_1
    return v1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

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
    .line 523
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCommandSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2219
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2220
    if-eqz v0, :cond_0

    .line 2221
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2222
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 2226
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 2227
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 2228
    const/4 v1, 0x1

    .line 2230
    :cond_0
    return v1

    .line 2226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isVvmAvailable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2535
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2536
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2538
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 2540
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2542
    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2558
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v1

    .line 2545
    :goto_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 2546
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 2547
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 2545
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2551
    goto :goto_0

    .line 2553
    :catch_0
    move-exception v0

    move v0, v1

    .line 2554
    goto :goto_0

    :cond_4
    move v0, v1

    .line 2558
    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 997
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 998
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1001
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 1002
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1012
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2525
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    return-void
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2035
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2037
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2038
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    if-eqz v1, :cond_0

    .line 2039
    const-string v1, "called_by"

    const-string v2, "BY_DIALER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2040
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Assisted Dialing: 12keypad dialer: placecall(): has put call_by intent extra"

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2042
    :cond_0
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2029
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2030
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2031
    return-object v0
.end method

.method private static newVVMIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2022
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2023
    const-string v1, "com.motorola.vvm"

    const-string v2, "com.motorola.vvm.ui.VvmMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    return-object v0
.end method

.method private static newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2016
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2017
    return-object v0
.end method

.method private onDialerActionButtonClick(Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V
    .locals 4

    .prologue
    .line 2365
    :try_start_0
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$4;->$SwitchMap$com$android$contacts$dialpad$DialpadFragment$DialAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2384
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "invalid button action."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_0
    :goto_0
    return-void

    .line 2367
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch dialer action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2370
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getSendSmsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2373
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceDialIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2376
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/dialpad/DialpadFragment$Listener;->onSearchButtonPressed()V

    goto :goto_0

    .line 2381
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1773
    .line 1775
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1776
    if-eqz v1, :cond_0

    .line 1777
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1782
    :cond_0
    :goto_0
    return v0

    .line 1779
    :catch_0
    move-exception v1

    .line 1780
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1761
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1766
    :cond_0
    :goto_0
    return v0

    .line 1763
    :catch_0
    move-exception v1

    .line 1764
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1789
    const/4 v0, 0x0

    .line 1791
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1792
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1796
    :cond_0
    :goto_0
    return v0

    .line 1793
    :catch_0
    move-exception v1

    .line 1794
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 1997
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1998
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 2009
    .local v0, "lastCallArgs":Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 2010
    return-void
.end method

.method private setDialerActionButton()V
    .locals 2

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLeftButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_left_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setDialerActionButtonImg(Landroid/widget/ImageView;Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V

    .line 2328
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_right_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setDialerActionButtonImg(Landroid/widget/ImageView;Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V

    .line 2329
    return-void
.end method

.method private setDialerActionButtonImg(Landroid/widget/ImageView;Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V
    .locals 2

    .prologue
    .line 2334
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$4;->$SwitchMap$com$android$contacts$dialpad$DialpadFragment$DialAction:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2356
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "invalid button action."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :goto_0
    return-void

    .line 2336
    :pswitch_0
    const v1, 0x7f02006a

    .line 2337
    const v0, 0x7f0c0290

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2359
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2360
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2340
    :pswitch_1
    const v1, 0x7f020080

    .line 2341
    const v0, 0x7f0c0299

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2344
    :pswitch_2
    const v1, 0x7f0200dc

    .line 2345
    const v0, 0x7f0c0298

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2348
    :pswitch_3
    const v1, 0x7f0200b2

    .line 2349
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2352
    :pswitch_4
    const v1, 0x7f020081

    .line 2353
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "dialString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v2, v0, p2, v3}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 674
    .local v1, "digits":Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 679
    .end local v1    # "digits":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 12
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 683
    const/16 v6, 0xc

    new-array v3, v6, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    aput-object v6, v3, v10

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    aput-object v6, v3, v9

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    aput-object v6, v3, v11

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    aput-object v6, v3, v8

    const/4 v6, 0x4

    new-array v7, v8, [I

    fill-array-data v7, :array_4

    aput-object v7, v3, v6

    const/4 v6, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    aput-object v7, v3, v6

    const/4 v6, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    aput-object v7, v3, v6

    const/4 v6, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    aput-object v7, v3, v6

    const/16 v6, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    aput-object v7, v3, v6

    const/16 v6, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_9

    aput-object v7, v3, v6

    const/16 v6, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_a

    aput-object v7, v3, v6

    const/16 v6, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_b

    aput-object v7, v3, v6

    .line 701
    .local v3, "keydata":[[I
    move-object v0, v3

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 702
    .local v5, "r":[I
    aget v6, v5, v10

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 703
    .local v2, "keyView":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    aget v6, v5, v9

    if-ne v6, v9, :cond_0

    .line 706
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 709
    :cond_0
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v6, :cond_1

    .line 710
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "keyView":Landroid/view/View;
    aget v6, v5, v11

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v5    # "r":[I
    :cond_2
    return-void

    .line 683
    :array_0
    .array-data 4
        0x7f0700b9
        0x1
        0x7f02002d
    .end array-data

    :array_1
    .array-data 4
        0x7f0700ba
        0x1
        0x7f020031
    .end array-data

    :array_2
    .array-data 4
        0x7f0700bb
        0x1
        0x7f020035
    .end array-data

    :array_3
    .array-data 4
        0x7f0700bc
        0x1
        0x7f020039
    .end array-data

    :array_4
    .array-data 4
        0x7f0700bd
        0x1
        0x7f02003d
    .end array-data

    :array_5
    .array-data 4
        0x7f0700be
        0x1
        0x7f020041
    .end array-data

    :array_6
    .array-data 4
        0x7f0700bf
        0x1
        0x7f020045
    .end array-data

    :array_7
    .array-data 4
        0x7f0700c0
        0x1
        0x7f020049
    .end array-data

    :array_8
    .array-data 4
        0x7f0700c1
        0x1
        0x7f02004d
    .end array-data

    :array_9
    .array-data 4
        0x7f0700c2
        0x0
        0x7f020056
    .end array-data

    :array_a
    .array-data 4
        0x7f0700c3
        0x1
        0x7f020029
    .end array-data

    :array_b
    .array-data 4
        0x7f0700c4
        0x1
        0x7f020052
    .end array-data
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 902
    const v12, 0x7f0701a0

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 903
    .local v2, "callSettingsMenuItem":Landroid/view/MenuItem;
    const v12, 0x7f07019c

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 904
    .local v1, "addToContactMenuItem":Landroid/view/MenuItem;
    const v12, 0x7f07019e

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 905
    .local v10, "twoSecPauseMenuItem":Landroid/view/MenuItem;
    const v12, 0x7f07019f

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 910
    .local v11, "waitMenuItem":Landroid/view/MenuItem;
    if-nez v2, :cond_0

    .line 979
    :goto_0
    return-void

    .line 914
    :cond_0
    const v12, 0x7f07019d

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 918
    .local v6, "sendSmsMenuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 919
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 921
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 929
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 931
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 933
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 923
    :cond_1
    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 924
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 935
    :cond_2
    iget-object v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 946
    .local v3, "digits":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "strDigits":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 949
    .local v5, "selectionStart":I
    iget-object v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 951
    .local v4, "selectionEnd":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5

    .line 952
    if-le v5, v4, :cond_3

    .line 954
    move v9, v5

    .line 955
    .local v9, "tmp":I
    move v5, v4

    .line 956
    move v4, v9

    .line 959
    .end local v9    # "tmp":I
    :cond_3
    if-eqz v5, :cond_4

    .line 961
    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 964
    invoke-static {v5, v4, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 977
    :goto_2
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 967
    :cond_4
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 971
    :cond_5
    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 974
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 975
    .local v8, "strLength":I
    invoke-static {v8, v8, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

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

    .line 1964
    if-ne p0, p1, :cond_3

    .line 1966
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 1981
    :cond_0
    :goto_0
    return v0

    .line 1969
    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1972
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1981
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1975
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1979
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0
.end method

.method private smartDialerInputChange(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 2114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    if-nez v1, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return-void

    .line 2118
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

    .line 2119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 2120
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2121
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

    .line 2124
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    .line 2129
    :goto_1
    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->lastQueryDigits:Ljava/lang/String;

    goto :goto_0

    .line 2126
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 2127
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_1
.end method

.method private toggleList(Landroid/view/View;Z)V
    .locals 9

    .prologue
    const v8, 0x7f0700d5

    const v7, 0x7f0700d2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2169
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    if-nez v0, :cond_0

    .line 2203
    :goto_0
    return-void

    .line 2170
    :cond_0
    const/4 v2, 0x0

    .line 2171
    const v0, 0x7f0700d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2172
    const v1, 0x7f0700cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2173
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2174
    const v2, 0x7f07015a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2177
    :cond_1
    sget-boolean v3, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2178
    :cond_2
    if-eqz p2, :cond_4

    .line 2179
    if-eqz v2, :cond_3

    .line 2180
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2182
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 2188
    const v0, 0x108026b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2202
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto :goto_0

    .line 2191
    :cond_4
    if-eqz v2, :cond_5

    .line 2192
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2194
    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2196
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2197
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    const v0, 0x1080272

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateAdditionalBtnState()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/high16 v4, 0x437f0000

    const/16 v3, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2235
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v0, :cond_3

    .line 2236
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2238
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2239
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2242
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2244
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2288
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2289
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2294
    :goto_1
    return-void

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerUtil;->hasDigitsChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2251
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2253
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2255
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 2260
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2261
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/high16 v1, 0x42c80000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2263
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2265
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 2271
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2273
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2275
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 2280
    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2282
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 2291
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method private updateDialString(C)V
    .locals 13
    .param p1, "type"    # C

    .prologue
    .line 1846
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1848
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 1849
    .local v6, "selectionStart":I
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 1857
    .local v5, "selectionEnd":I
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-eq v8, v6, :cond_0

    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-ne v8, v5, :cond_6

    :cond_0
    const/4 v0, 0x1

    .line 1861
    .local v0, "cursorStartsFromEnd":Z
    :goto_0
    if-le v6, v5, :cond_1

    .line 1863
    move v7, v6

    .line 1864
    .local v7, "tmp":I
    move v6, v5

    .line 1865
    move v5, v7

    .line 1868
    .end local v7    # "tmp":I
    :cond_1
    if-eq v6, v5, :cond_2

    .line 1871
    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1873
    :cond_2
    invoke-virtual {v4, v6, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, "newStr":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v8, :cond_3

    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerUtil;->noAlphaChar(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1879
    :cond_3
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1880
    .local v1, "dialStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1881
    .local v3, "postDialStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 1886
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v10, v1, v11, v12}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    .end local v1    # "dialStr":Ljava/lang/String;
    .end local v3    # "postDialStr":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-lt v6, v8, :cond_8

    .line 1898
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1910
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 1911
    return-void

    .line 1857
    .end local v0    # "cursorStartsFromEnd":Z
    .end local v2    # "newStr":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1890
    .restart local v0    # "cursorStartsFromEnd":Z
    .restart local v2    # "newStr":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1906
    :cond_8
    if-eqz v0, :cond_5

    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_5

    .line 1907
    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 331
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->smartDialerInputChange(Ljava/lang/CharSequence;)V

    .line 338
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateAdditionalBtnState()V

    .line 340
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 306
    return-void
.end method

.method public callVoicemail()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1278
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVvmAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1280
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roaming"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1282
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1283
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1284
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vm_vvm_roaming_selection"

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1285
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->showVMDataRoamingDialog()V

    .line 1311
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1313
    return-void

    .line 1286
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vm_vvm_roaming_selection"

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1287
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVM(Landroid/content/Context;)V

    .line 1289
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail roaming: directly start VM as call Setting"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vm_vvm_roaming_selection"

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1291
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVVMIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1292
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVVM(Landroid/content/Context;)V

    .line 1293
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail roaming: directly start VVM as call Setting"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    :cond_3
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail roaming: bailing out for wrong path"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1296
    :cond_4
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vm_vvm_selection"

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1297
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->showVMVVMSelectDialog()V

    goto :goto_0

    .line 1298
    :cond_5
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vm_vvm_selection"

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 1299
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1300
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVM(Landroid/content/Context;)V

    .line 1301
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail: directly start VM as call Setting"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1302
    :cond_6
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vm_vvm_selection"

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1303
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVVMIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1304
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVVM(Landroid/content/Context;)V

    .line 1305
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail roaming: directly start VVM as call Setting"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1306
    :cond_7
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "callVoicemail: bailing out for wrong path"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1309
    :cond_8
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 639
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v0

    .line 647
    .local v0, "isAddCallMode":Z
    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1391
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    if-eqz v0, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1396
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1402
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1422
    :cond_3
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0

    .line 1426
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerUtil;->hasDigitsChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    :cond_5
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 1440
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1442
    const v0, 0x7f0c0224

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1444
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1448
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_0

    .line 1450
    :cond_7
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 1451
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    .line 1453
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1454
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_8

    .line 1455
    const-string v1, "com.android.phone.CALL_ORIGIN"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    :cond_8
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer;->getSmartDialer()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1460
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer;->getQwertyKeypad()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1461
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    .line 1469
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1472
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1463
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    goto :goto_1

    .line 1466
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    goto :goto_1
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2511
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "start to query voicemain number"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2512
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2514
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 2515
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 2517
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2518
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailTag:Ljava/lang/String;

    .line 2520
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2530
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2531
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1088
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v3, v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1207
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1091
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1092
    invoke-direct {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1093
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1097
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1098
    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1099
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1103
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1104
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1105
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1109
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1110
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1111
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1115
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1116
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1117
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1121
    :pswitch_6
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1122
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1123
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1127
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1128
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1129
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1133
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1134
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1135
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1139
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1140
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1141
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1145
    :pswitch_a
    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1146
    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1147
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1151
    :pswitch_b
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1152
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1153
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 1157
    :pswitch_c
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 1158
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1159
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 1163
    :pswitch_d
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1164
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 1169
    :pswitch_e
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1170
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    goto/16 :goto_0

    .line 1181
    :pswitch_f
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1184
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    goto/16 :goto_0

    .line 1188
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 1189
    .local v0, "popup":Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1196
    .end local v0    # "popup":Landroid/widget/PopupMenu;
    :pswitch_11
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1197
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_left_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->onDialerActionButtonClick(Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V

    goto/16 :goto_0

    .line 1201
    :pswitch_12
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1202
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mButton_right_action:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->onDialerActionButtonClick(Lcom/android/contacts/dialpad/DialpadFragment$DialAction;)V

    goto/16 :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700b9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_e
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 344
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "enter onCreate"

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 360
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 366
    if-eqz p1, :cond_1

    .line 367
    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 368
    const-string v1, "mIsNumberBeenDialed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 371
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMessageBtnFtrFlag:Z

    .line 372
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    .line 373
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdCDMAFeatureOn:Z

    .line 374
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mExcludeVoicemail:Z

    .line 375
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getDialerActionButton()V

    .line 379
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    .line 380
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 885
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 886
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 890
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0700c8

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 384
    const v5, 0x7f040043

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "fragmentView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 388
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 390
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x7f0700d1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 391
    const v5, 0x7f0700d4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 393
    iget-boolean v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v5, :cond_6

    .line 394
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    new-array v7, v2, [Landroid/text/InputFilter;

    new-instance v8, Lcom/android/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;

    invoke-direct {v8}, Lcom/android/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;-><init>()V

    aput-object v8, v7, v6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 395
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/high16 v7, 0x80000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 400
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 403
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 405
    const v5, 0x7f0700d3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 406
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "hyphenation_feature_enabled"

    invoke-static {v5, v7, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v2, :cond_0

    move v2, v6

    .line 417
    .local v2, "hyphenStatus":Z
    :cond_0
    if-nez v2, :cond_1

    .line 418
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v5, v7}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 430
    :cond_1
    const v5, 0x7f0700cd

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    .line 431
    const v5, 0x7f0700ce

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "dividerView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 434
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 435
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 436
    if-eqz v0, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_2
    :goto_1
    const v5, 0x7f0700b9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 456
    .local v3, "oneButton":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 457
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 460
    :cond_3
    const v5, 0x7f0700c6

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    .line 464
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 466
    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 467
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 497
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v6, 0x7f0700c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLeftButton:Landroid/widget/ImageView;

    .line 498
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLeftButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 499
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 503
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v6, 0x7f0700c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    .line 504
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    .line 505
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->setDialerActionButton()V

    .line 508
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->initSmartDialer(Landroid/view/View;)V

    .line 514
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 519
    return-object v1

    .line 397
    .end local v0    # "dividerView":Landroid/view/View;
    .end local v2    # "hyphenStatus":Z
    .end local v3    # "oneButton":Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_0

    .line 438
    .restart local v0    # "dividerView":Landroid/view/View;
    .restart local v2    # "hyphenStatus":Z
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 441
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 469
    .restart local v3    # "oneButton":Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 470
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 873
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "enter onDestroyView"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 876
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 877
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->destroyCleanUp()V

    .line 878
    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 879
    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 880
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const v4, 0x7f0700d4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1017
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1021
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1023
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    move v0, v1

    .line 1083
    :goto_0
    return v0

    .line 1026
    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1028
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1031
    :try_start_0
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceDialIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v1

    .line 1036
    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to launch voice dialer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1038
    :cond_2
    const/16 v0, 0x52

    if-eq p2, v0, :cond_3

    const/16 v0, 0x54

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 1041
    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->setQwertyKeypad(Z)V

    .line 1045
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mQwertySupported:Z

    if-eqz v0, :cond_6

    .line 1046
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#*+-(),/. ;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p3, v0, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    .line 1051
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1054
    sparse-switch p2, :sswitch_data_0

    :cond_5
    :goto_3
    move v0, v2

    .line 1083
    goto :goto_0

    .line 1048
    :cond_6
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->DTMF_CHARS:[C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p3, v0, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    goto :goto_2

    .line 1056
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0700d0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1058
    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    move v0, v1

    .line 1059
    goto/16 :goto_0

    .line 1061
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_3

    .line 1065
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    move v0, v1

    .line 1066
    goto/16 :goto_0

    .line 1070
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0700cd

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1072
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_8

    .line 1074
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_8
    move v0, v1

    .line 1076
    goto/16 :goto_0

    .line 1054
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1225
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1226
    .local v0, "digits":Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1227
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 1273
    :goto_0
    return v2

    .line 1229
    :sswitch_0
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 1237
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mExcludeVoicemail:Z

    if-nez v4, :cond_0

    .line 1238
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1253
    goto :goto_0

    .line 1258
    :sswitch_2
    const/16 v3, 0x51

    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1262
    :sswitch_3
    const/16 v3, 0x3e

    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1269
    :sswitch_4
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    move v2, v3

    .line 1270
    goto :goto_0

    .line 1227
    :sswitch_data_0
    .sparse-switch
        0x7f0700b9 -> :sswitch_1
        0x7f0700c3 -> :sswitch_2
        0x7f0700c4 -> :sswitch_3
        0x7f0700d3 -> :sswitch_0
        0x7f0700d4 -> :sswitch_4
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1805
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1830
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1807
    :pswitch_0
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 1810
    :pswitch_1
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 1814
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getSendSmsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1826
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1805
    :pswitch_data_0
    .packed-switch 0x7f07019c
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 836
    sget-boolean v1, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v1, :cond_0

    .line 837
    const-string v1, "enter onPause"

    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 840
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 843
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 845
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 847
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 850
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 852
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 856
    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 859
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 864
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->pauseCleanUp()V

    .line 868
    :cond_3
    return-void

    .line 852
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
    .line 895
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 899
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 718
    sget-boolean v6, Lcom/android/contacts/dialpad/DialpadFragment;->VDBG:Z

    if-eqz v6, :cond_0

    .line 719
    const-string v6, "enter onResume"

    invoke-static {v6}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 721
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 726
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "com.android.phone.PhoneAp.mIsInBatteryCooldown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v3, v7

    .line 728
    .local v3, "isInCooldown":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 729
    const-string v6, "In Battery Cooldown mode, finish..."

    invoke-static {v6}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 823
    :goto_1
    return-void

    .end local v3    # "isInCooldown":Z
    :cond_1
    move v3, v8

    .line 726
    goto :goto_0

    .line 737
    .restart local v3    # "isInCooldown":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 740
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "dtmf_tone"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 748
    iget-object v9, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 749
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    .line 754
    :try_start_1
    new-instance v6, Landroid/media/ToneGenerator;

    const/16 v10, 0x8

    iget v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->tone_relative_volume:I

    invoke-direct {v6, v10, v11}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :cond_3
    :goto_3
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    if-eqz v6, :cond_4

    .line 765
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    .line 766
    iput-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    .line 769
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 770
    .local v4, "parent":Landroid/app/Activity;
    instance-of v6, v4, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v6, :cond_5

    .line 774
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 775
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 776
    .local v0, "dialUri":Landroid/net/Uri;
    if-eqz v0, :cond_5

    const-string v6, "isDialUriUsed"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 777
    const-string v6, "isDialUriUsed"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 787
    .end local v0    # "dialUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 789
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 801
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 802
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const v7, 0x7f0c00aa

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 815
    :goto_4
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    if-eqz v6, :cond_6

    .line 816
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->resumeQuery()V

    .line 819
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isAdFtrOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsAdFtrOn:Z

    .line 820
    iput-boolean v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsCallBeenPlaced:Z

    .line 821
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateAdditionalBtnState()V

    goto/16 :goto_1

    .end local v4    # "parent":Landroid/app/Activity;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    move v6, v8

    .line 740
    goto/16 :goto_2

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v6, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught while creating local tone generator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3

    .line 761
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 805
    .restart local v4    # "parent":Landroid/app/Activity;
    .restart local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_8
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 829
    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 830
    const-string v0, "mIsNumberBeenDialed"

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsNumberBeenDialed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 831
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 309
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 317
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "fragmentVisible"    # Z

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    if-eqz v0, :cond_0

    .line 2070
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->resumeQuery()V

    .line 2076
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentVisibilty:Z

    .line 2078
    return-void

    .line 2072
    :cond_1
    if-nez p1, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdapter:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->pauseCleanUp()V

    goto :goto_0
.end method

.method playTone(I)V
    .locals 4

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1520
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1521
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1527
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1528
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

    .line 1529
    monitor-exit v1

    goto :goto_0

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1533
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1534
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/dialpad/DialpadFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .line 2062
    return-void
.end method

.method showList(Z)V
    .locals 2

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2158
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq p1, v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleList(Landroid/view/View;Z)V

    .line 2162
    :cond_0
    return-void

    .line 2158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showVMDataRoamingDialog()V
    .locals 1

    .prologue
    .line 2394
    sget-boolean v0, Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "show vm data roaming dialog"

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2395
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;->show(Landroid/app/Fragment;)V

    .line 2396
    return-void
.end method

.method showVMVVMSelectDialog()V
    .locals 0

    .prologue
    .line 2399
    invoke-static {p0}, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;->show(Landroid/app/Fragment;)V

    .line 2400
    return-void
.end method
