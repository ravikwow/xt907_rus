.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/android/contacts/CallDetailActivity$ViewEntry;,
        Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/contacts/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasTrashOption:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsEcidAvailable:Z

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cached_convert_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    .line 148
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    .line 239
    new-instance v0, Lcom/android/contacts/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$1;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/android/contacts/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$2;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/android/contacts/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$3;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1057
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/contacts/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/CallDetailActivity;Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/CallDetailActivity;Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetails(Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1055
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1007
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1008
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1010
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 842
    const v7, 0x7f06002f

    invoke-virtual {p0, v7}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 843
    .local v1, "convertView":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 845
    const v7, 0x7f060035

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 846
    .local v3, "icon":Landroid/widget/ImageView;
    const v7, 0x7f060034

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 847
    .local v2, "divider":Landroid/view/View;
    const v7, 0x7f060031

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 850
    .local v6, "text":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    if-eqz v7, :cond_0

    .line 851
    const v7, 0x7f060033

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 852
    .local v0, "cityIdView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 854
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    .end local v0    # "cityIdView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    const v7, 0x7f060030

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 861
    .local v5, "mainAction":Landroid/view/View;
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 863
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 866
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    .line 867
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 869
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 871
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 872
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :goto_1
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    const v7, 0x7f060032

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 880
    .local v4, "label":Landroid/widget/TextView;
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 881
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    :goto_2
    return-void

    .line 856
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "mainAction":Landroid/view/View;
    .restart local v0    # "cityIdView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 874
    .end local v0    # "cityIdView":Landroid/widget/TextView;
    .restart local v5    # "mainAction":Landroid/view/View;
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 883
    .restart local v4    # "label":Landroid/widget/TextView;
    :cond_3
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    .line 837
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1046
    :goto_0
    return v0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1046
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 380
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 382
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 389
    :cond_0
    return-object v3

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 385
    .local v0, "ids":[J
    array-length v4, v0

    new-array v3, v4, [Landroid/net/Uri;

    .line 386
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 387
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .param p1, "callCursor"    # Landroid/database/Cursor;

    .prologue
    .line 783
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, "number":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "countryIso":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "convertNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 792
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    const/4 v3, 0x0

    .line 798
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private getPhoneCallDetails(Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;
    .locals 22
    .param p1, "callCursor"    # Landroid/database/Cursor;
    .param p2, "contactInfo"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 723
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "number":Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 726
    .local v3, "numberPresentation":I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 727
    .local v8, "date":J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 728
    .local v10, "duration":J
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 730
    .local v18, "callType":I
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, "countryIso":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, "geocode":Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 733
    .local v19, "convertNumber":Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 735
    .local v17, "cnapName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v20, p2

    .line 752
    .local v20, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v20, :cond_2

    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v1, v2, v3, v7, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 754
    .local v4, "formattedNumber":Ljava/lang/CharSequence;
    const-string v12, ""

    .line 755
    .local v12, "nameText":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 756
    .local v13, "numberType":I
    const-string v14, ""

    .line 757
    .local v14, "numberLabel":Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 758
    .local v16, "photoUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 767
    .local v15, "lookupUri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Lcom/android/contacts/PhoneCallDetails;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v21, 0x0

    aput v18, v7, v21

    invoke-direct/range {v1 .. v17}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1

    .line 748
    .end local v4    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v12    # "nameText":Ljava/lang/CharSequence;
    .end local v13    # "numberType":I
    .end local v14    # "numberLabel":Ljava/lang/CharSequence;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "photoUri":Landroid/net/Uri;
    .end local v20    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 760
    .restart local v20    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 761
    .restart local v4    # "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 762
    .restart local v12    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 763
    .restart local v13    # "numberType":I
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 764
    .restart local v14    # "numberLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 765
    .restart local v16    # "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .restart local v15    # "lookupUri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 918
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 919
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 920
    const/4 v1, 0x0

    .line 928
    :goto_0
    return-object v1

    .line 924
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 925
    const-string v1, "CallDetail"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 806
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$4;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1016
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->finish()V

    .line 1019
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f06002e

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 325
    invoke-virtual {p0, v6}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, "voicemailContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 331
    .local v1, "playbackFragment":Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, "fragmentArguments":Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 340
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 341
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 347
    .end local v0    # "fragmentArguments":Landroid/os/Bundle;
    .end local v1    # "playbackFragment":Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 1050
    new-instance v0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 1051
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 706
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1037
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1032
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->setContentView(I)V

    .line 281
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 282
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 285
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 286
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 287
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 289
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 290
    new-instance v0, Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivityQueryHandler;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    .line 291
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 293
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 294
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 298
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 299
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 300
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 301
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 302
    new-instance v0, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 303
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->configureActionBar()V

    .line 304
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->closeSystemDialogs()V

    .line 309
    :cond_0
    invoke-static {p0}, Lcom/motorola/contacts/util/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    .line 310
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 934
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 410
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 397
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 399
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 401
    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 403
    .local v0, "callIntent":Landroid/content/Intent;
    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {p0, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 405
    const/4 v2, 0x1

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 987
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 949
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 951
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->onHomeSelected()V

    .line 952
    const/4 v0, 0x1

    return v0

    .line 949
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v1, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 964
    .local v2, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 965
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 963
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    .end local v2    # "callUri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/contacts/CallDetailActivity$6;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/CallDetailActivity$6;-><init>(Lcom/android/contacts/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 983
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 991
    .local v0, "voicemailUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/contacts/CallDetailActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/CallDetailActivity$7;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1003
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->disableProximitySensor(Z)V

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 1026
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1027
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 941
    const v0, 0x7f060150

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 942
    const v0, 0x7f060151

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 943
    const v0, 0x7f06014f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 944
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 316
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 889
    if-nez p1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 894
    .local v0, "message":Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 899
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 901
    iget v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 902
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 904
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 905
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 906
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/CallDetailActivity$5;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 913
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
