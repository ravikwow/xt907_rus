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

.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

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

.field private mSmallContactBackgroundView:Landroid/widget/ImageView;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/CallDetailActivity;->DBG:Z

    .line 150
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/CallDetailActivity;->VDBG:Z

    .line 220
    const/4 v0, 0x7

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

    const-string v2, "cached_convert_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    .line 242
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

    .line 1032
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/contacts/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/CallDetailActivity;Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 81
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
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetails(Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/CallDetailActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    return v0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 1029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 982
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 983
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 985
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 817
    const v7, 0x7f070034

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 818
    .local v1, "convertView":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 820
    const v7, 0x7f07003a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 821
    .local v3, "icon":Landroid/widget/ImageView;
    const v7, 0x7f070039

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 822
    .local v2, "divider":Landroid/view/View;
    const v7, 0x7f070036

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 825
    .local v6, "text":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    if-eqz v7, :cond_0

    .line 826
    const v7, 0x7f070038

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 827
    .local v0, "cityIdView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 829
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 835
    .end local v0    # "cityIdView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    const v7, 0x7f070035

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 836
    .local v5, "mainAction":Landroid/view/View;
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 838
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 841
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    .line 842
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    iget v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 844
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 846
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :goto_1
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    const v7, 0x7f070037

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 855
    .local v4, "label":Landroid/widget/TextView;
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 856
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :goto_2
    return-void

    .line 831
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "mainAction":Landroid/view/View;
    .restart local v0    # "cityIdView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 849
    .end local v0    # "cityIdView":Landroid/widget/TextView;
    .restart local v5    # "mainAction":Landroid/view/View;
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 858
    .restart local v4    # "label":Landroid/widget/TextView;
    :cond_3
    iget-object v7, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    .line 812
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 813
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1021
    :goto_0
    return v0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1021
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 383
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 390
    :cond_0
    return-object v3

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 386
    .local v0, "ids":[J
    array-length v4, v0

    new-array v3, v4, [Landroid/net/Uri;

    .line 387
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 388
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .param p1, "callCursor"    # Landroid/database/Cursor;

    .prologue
    .line 743
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "number":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "countryIso":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "convertNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 752
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v3

    return-object v3
.end method

.method private getPhoneCallDetails(Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;
    .locals 20
    .param p1, "callCursor"    # Landroid/database/Cursor;
    .param p2, "contactInfo"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 687
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "number":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 689
    .local v7, "date":J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 690
    .local v9, "duration":J
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 691
    .local v16, "callType":I
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "countryIso":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "geocode":Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 695
    .local v17, "convertNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 708
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v18, p2

    .line 712
    .local v18, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v18, :cond_2

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 714
    .local v3, "formattedNumber":Ljava/lang/CharSequence;
    const-string v11, ""

    .line 715
    .local v11, "nameText":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 716
    .local v12, "numberType":I
    const-string v13, ""

    .line 717
    .local v13, "numberLabel":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 718
    .local v15, "photoUri":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 727
    .local v14, "lookupUri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Lcom/android/contacts/PhoneCallDetails;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/16 v19, 0x0

    aput v16, v6, v19

    invoke-direct/range {v1 .. v15}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v1

    .line 708
    .end local v3    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v11    # "nameText":Ljava/lang/CharSequence;
    .end local v12    # "numberType":I
    .end local v13    # "numberLabel":Ljava/lang/CharSequence;
    .end local v14    # "lookupUri":Landroid/net/Uri;
    .end local v15    # "photoUri":Landroid/net/Uri;
    .end local v18    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 720
    .restart local v18    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 721
    .restart local v3    # "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 722
    .restart local v11    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 723
    .restart local v12    # "numberType":I
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 724
    .restart local v13    # "numberLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 725
    .restart local v15    # "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .restart local v14    # "lookupUri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 893
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 894
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 895
    const/4 v1, 0x0

    .line 903
    :goto_0
    return-object v1

    .line 899
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 900
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

    .line 903
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

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
    .line 351
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

.method private loadContactPhotos(Landroid/net/Uri;ZZZ)V
    .locals 6
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "isVoicemail"    # Z
    .param p3, "isEmergency"    # Z
    .param p4, "isNotSaved"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 759
    if-eqz p2, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :goto_0
    return-void

    .line 764
    :cond_0
    if-eqz p3, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x1080448

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 767
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 769
    :cond_1
    if-eqz p4, :cond_2

    .line 770
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 772
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 777
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$4;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 989
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 993
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 994
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f070033

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 326
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 327
    .local v2, "voicemailContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 332
    .local v1, "playbackFragment":Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "fragmentArguments":Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 338
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 341
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 342
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 348
    .end local v0    # "fragmentArguments":Landroid/os/Bundle;
    .end local v1    # "playbackFragment":Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 346
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 1025
    new-instance v0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 1026
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 671
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1012
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1007
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 281
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 282
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 285
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

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

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/Context;)V

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
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 293
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 294
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 298
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSmallContactBackgroundView:Landroid/widget/ImageView;

    .line 300
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 302
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 303
    new-instance v0, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 304
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->configureActionBar()V

    .line 305
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 307
    invoke-static {p0}, Lcom/android/contacts/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->closeSystemDialogs()V

    .line 311
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 909
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 410
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 398
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 400
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
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 405
    const/4 v2, 0x1

    goto :goto_0

    .line 395
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
    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 962
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 924
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 932
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 926
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->onHomeSelected()V

    .line 927
    const/4 v0, 0x1

    return v0

    .line 924
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
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

    .line 939
    .local v2, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 940
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 938
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    .end local v2    # "callUri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/contacts/CallDetailActivity$6;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/CallDetailActivity$6;-><init>(Lcom/android/contacts/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 958
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 966
    .local v0, "voicemailUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/contacts/CallDetailActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/CallDetailActivity$7;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 978
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->disableProximitySensor(Z)V

    .line 1000
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 1001
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1002
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 916
    const v0, 0x7f07018c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 917
    const v0, 0x7f07018d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    const v0, 0x7f07018b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 919
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 317
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 864
    if-nez p1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 869
    .local v0, "message":Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 875
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 876
    iget v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 877
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 879
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 880
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 881
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/CallDetailActivity$5;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method
