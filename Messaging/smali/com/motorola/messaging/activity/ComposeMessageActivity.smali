.class public Lcom/motorola/messaging/activity/ComposeMessageActivity;
.super Lcom/motorola/messaging/activity/MessagingListActivity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;,
        Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field private static final SIM_CARD_URI:Landroid/net/Uri;

.field private static sEmptyContactList:Lcom/motorola/messaging/contact/ContactList;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAddCallItemOption:Ljava/lang/Boolean;

.field private mAddMultipleImagesTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

.field private final mAttachmentEditorHandler:Landroid/os/Handler;

.field private mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

.field private mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private final mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/motorola/messaging/conversation/Conversation;

.field private mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

.field private final mDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

.field private mDeleteThreadExecutor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

.field private mDialogBundle:Landroid/os/Bundle;

.field private final mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

.field private final mDummyClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExitOnSent:Z

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;

.field private final mInteractiveActionBarListener:Landroid/view/View$OnClickListener;

.field private mLargestEmailRecipient:Ljava/lang/String;

.field private mLastProgressDialog:Landroid/app/ProgressDialog;

.field private mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMessageAddedToList:Z

.field private mModeCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

.field private mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

.field private mMsgListView:Landroid/widget/ListView;

.field private mMsgSendingInProgress:Z

.field private mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPopulatingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerLongPressReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

.field private mResizedVideoFileName:Ljava/lang/String;

.field private mSendButton:Landroid/widget/Button;

.field private mSmsToMmsConversionConfirmed:Z

.field private mSubjectContainer:Landroid/widget/LinearLayout;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mThreadChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mVKeypadAttempts:I

.field private mWaitingDialog:Landroid/app/ProgressDialog;

.field private mWarningBar:Lcom/motorola/messaging/view/WarningBar;

.field private mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    .line 183
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->SIM_CARD_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingListActivity;-><init>()V

    .line 335
    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    .line 405
    iput-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    .line 410
    iput-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z

    .line 426
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    invoke-direct {v0, p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    .line 429
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    invoke-direct {v0, p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    .line 432
    iput-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgSendingInProgress:Z

    .line 446
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 485
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 519
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$3;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 526
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$4;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    .line 534
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$5;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 543
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBarListener:Landroid/view/View$OnClickListener;

    .line 1252
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$10;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPowerLongPressReceiver:Landroid/content/BroadcastReceiver;

    .line 1280
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$11;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1300
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$12;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mThreadChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2239
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$18;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$18;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 2256
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 4978
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$58;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$58;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    .line 5098
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDeleteThreadExecutor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    .line 6380
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setTextEditorCursorAtEnd()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/contact/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMessageRecipients()V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/messaging/activity/ComposeMessageActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showErrorDialogIfNeeded(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mResizedVideoFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddCallItemOption:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasOnlineAlbumRecipients()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$3500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic access$3700(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->insertText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->doSend()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SmilModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMmsContent(Lcom/motorola/messaging/model/SmilModel;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addAttachment(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getSendingWarningDialog(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/MessageListAdapter;)Lcom/motorola/messaging/adapter/MessageListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/motorola/messaging/adapter/MessageListAdapter;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/database/Cursor;JLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->moveCursorToMessage(Landroid/database/Cursor;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchSlideShowEditor()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->onContentDeleted()V

    return-void
.end method

.method static synthetic access$5100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSaveMediaResult(Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypad()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/attachment/AttachmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateImeOptions()V

    return-void
.end method

.method static synthetic access$6400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypadForMessageEditor()V

    return-void
.end method

.method static synthetic access$6600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->checkStorage(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$6800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initMessageList()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchAttachmentList()V

    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showConvertProtocolToast(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSendingWarnings(Z)V

    return-void
.end method

.method static synthetic access$7202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/view/Menu;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V

    return-void
.end method

.method static synthetic access$7800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleForwardContextMenuClicked(Ljava/lang/String;Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;JLcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReplyToSenderContextMenuClicked(Ljava/lang/String;JLcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V

    return-void
.end method

.method static synthetic access$8000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->SIM_CARD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/composer/MessageItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->protectMessage(Lcom/motorola/messaging/composer/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mHighlight:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private addAttachment(I)V
    .locals 3

    .prologue
    .line 2274
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 2275
    const-string v0, "ComposeMsgActivity"

    const-string v1, "addAttachment() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAttachment() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2362
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 2363
    const-string v0, "ComposeMsgActivity"

    const-string v1, "addAttachment() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :cond_1
    return-void

    .line 2282
    :pswitch_0
    :try_start_0
    const-string v0, "image/*"

    invoke-static {v0}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2284
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2362
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 2363
    const-string v1, "ComposeMsgActivity"

    const-string v2, "addAttachment() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0

    .line 2289
    :pswitch_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2290
    const-string v1, "output"

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$ScrapSpace;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2293
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2298
    :pswitch_2
    const-string v0, "video/*"

    invoke-static {v0}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2300
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2306
    :pswitch_3
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getCurrentNonTextSmilSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getRecordVideoIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v0

    .line 2308
    if-nez v0, :cond_3

    .line 2309
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "error_media_type"

    const v2, 0x7f0b00f0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2310
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 2312
    :cond_3
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2318
    :pswitch_4
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 2320
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2326
    :pswitch_5
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getCurrentNonTextSmilSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getRecordSoundIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v0

    .line 2328
    if-nez v0, :cond_4

    .line 2329
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "error_media_type"

    const v2, 0x7f0b00ee

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2330
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 2332
    :cond_4
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2338
    :pswitch_6
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 2339
    const-string v1, "for_export_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2340
    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2345
    :pswitch_7
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchSlideShowEditor()V

    goto/16 :goto_0

    .line 2349
    :pswitch_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMmsVcardLocationWarningAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2350
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2352
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2353
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private addAudio(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 3741
    if-eqz p1, :cond_0

    .line 3742
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    const/4 v0, 0x3

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3744
    :cond_0
    return-void
.end method

.method private addCallItem(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 1905
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddCallItemOption:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddCallItemOption:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1932
    :goto_0
    return-void

    .line 1908
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;I)V

    .line 1930
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "resolve_add_call_option"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addIcal(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3759
    if-eqz p1, :cond_0

    .line 3760
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    const/4 v0, 0x7

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3762
    :cond_0
    return-void
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3729
    if-eqz p1, :cond_0

    .line 3730
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3732
    :cond_0
    return-void
.end method

.method private addLocation(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 3584
    if-nez p1, :cond_1

    .line 3630
    :cond_0
    :goto_0
    return-void

    .line 3588
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIsLocationVCardMandatory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getIsLocationVCardEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3590
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addLocationVCard(Landroid/content/Intent;)V

    .line 3593
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3595
    const-string v0, "com.motorola.contextual.location.ils.name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3596
    const-string v2, "com.motorola.contextual.location.ils.address"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3599
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 3600
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3601
    const/4 v0, 0x0

    .line 3606
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    :cond_6
    const-string v0, "com.motorola.contextual.location.ils.bitly"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3620
    const-string v0, "com.motorola.contextual.location.ils.uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3622
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3623
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3627
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->insertText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addLocationVCard(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const-wide v10, 0x7fefffffffffffffL

    .line 3648
    new-instance v4, Lcom/motorola/messaging/vcard/VCardBuilder;

    const-string v0, "UTF-8"

    invoke-direct {v4, v12, v0}, Lcom/motorola/messaging/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 3649
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3650
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3651
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3654
    const-string v0, "com.motorola.contextual.location.ils.latitude"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 3655
    const-string v0, "com.motorola.contextual.location.ils.longitude"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    .line 3656
    cmpl-double v0, v6, v10

    if-eqz v0, :cond_0

    cmpl-double v0, v8, v10

    if-nez v0, :cond_1

    .line 3657
    :cond_0
    const-string v0, "ComposeMsgActivity"

    const-string v1, "Location data does not contain mandatory GEO data"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    :goto_0
    return-void

    .line 3661
    :cond_1
    const-string v0, "data1"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3662
    const-string v0, "data2"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3663
    invoke-virtual {v4, v5}, Lcom/motorola/messaging/vcard/VCardBuilder;->appendGeo(Ljava/util/List;)Lcom/motorola/messaging/vcard/VCardBuilder;

    .line 3664
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3668
    const-string v0, "com.motorola.contextual.location.ils.bitly"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3671
    const-string v0, "com.motorola.contextual.location.ils.uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3673
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3674
    const-string v0, "ComposeMsgActivity"

    const-string v3, "Location data does not contain mandatory URL data"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    :goto_1
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3683
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3684
    const-string v3, "data1"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    const-string v0, "is_primary"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3686
    invoke-virtual {v4, v5, v2}, Lcom/motorola/messaging/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/motorola/messaging/vcard/VCardPhoneNumberTranslationCallback;)Lcom/motorola/messaging/vcard/VCardBuilder;

    .line 3687
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3691
    :cond_3
    const-string v0, "com.motorola.contextual.location.ils.name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3692
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3693
    const-string v0, "data1"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v4, v5}, Lcom/motorola/messaging/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/motorola/messaging/vcard/VCardBuilder;

    .line 3695
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3699
    :cond_4
    const-string v0, "ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3701
    const-string v6, "data4"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    :cond_5
    const-string v0, "CITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3704
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3705
    const-string v6, "data7"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    :cond_6
    const-string v0, "ADMIN_AREA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3709
    const-string v6, "data8"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    :cond_7
    const-string v0, "POSTAL_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3712
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3713
    const-string v6, "data9"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    :cond_8
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3717
    const-string v6, "data10"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    :cond_9
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 3720
    const-string v0, "is_primary"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3721
    invoke-virtual {v4, v5}, Lcom/motorola/messaging/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/motorola/messaging/vcard/VCardBuilder;

    .line 3722
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3725
    :cond_a
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    const/4 v0, 0x6

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    invoke-virtual {v4}, Lcom/motorola/messaging/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3676
    :cond_b
    const-string v3, "data1"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    invoke-virtual {v4, v5}, Lcom/motorola/messaging/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/motorola/messaging/vcard/VCardBuilder;

    .line 3678
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1
.end method

.method private addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "mediaCallback"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;
    .param p2, "mediaUri"    # Landroid/net/Uri;
    .param p3, "mediaName"    # Ljava/lang/String;
    .param p4, "mediaData"    # Ljava/lang/String;
    .param p5, "appendMedia"    # Z

    .prologue
    .line 944
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    const/4 v3, 0x3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;ILcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 990
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "add_media"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method private addSaveContactItem(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1935
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 1937
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 1939
    .local v1, "hasValidNumber":Z
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasOnlineAlbumRecipients()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1940
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1942
    :cond_2
    return-void
.end method

.method private addVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3750
    if-eqz p1, :cond_0

    .line 3751
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    const/4 v0, 0x5

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3753
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3735
    if-eqz p1, :cond_0

    .line 3736
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;)V

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3738
    :cond_0
    return-void
.end method

.method private checkStorage(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5383
    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->isAvailStorageBelowThreshold()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5384
    const-string v1, "ComposeMsgActivity"

    const-string v2, "checkLowStorage() - Storage is full!!!"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    const v1, 0x7f0b01b8

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5388
    if-eqz p1, :cond_0

    .line 5389
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5394
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1114
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1116
    .local v0, "clip":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    return-void
.end method

.method private deleteThreadIfEmpty()V
    .locals 2

    .prologue
    .line 6115
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6116
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6117
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgSendingInProgress:Z

    if-nez v0, :cond_1

    .line 6118
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/conversation/Conversation;->asyncDeleteEmpty(Landroid/content/Context;J)V

    .line 6124
    :cond_0
    :goto_0
    return-void

    .line 6120
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->clearThreadId()V

    goto :goto_0
.end method

.method private doSend()V
    .locals 2

    .prologue
    .line 4498
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4499
    const-string v0, "ComposeMsgActivity"

    const-string v1, "doSend"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSendingWarnings(Z)V

    .line 4509
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->send()V

    .line 4512
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4513
    return-void
.end method

.method private drawBottomPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 4129
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4132
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->syncText()V

    .line 4134
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4136
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->access$4400(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;Ljava/lang/String;I)V

    .line 4158
    :cond_0
    :goto_0
    return-void

    .line 4140
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4142
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4143
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableView(Landroid/view/View;)V

    .line 4151
    :goto_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/attachment/AttachmentManager;->setVisibility(I)V

    goto :goto_0

    .line 4147
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyEnableView(Landroid/view/View;)V

    goto :goto_1

    .line 4154
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyEnableView(Landroid/view/View;)V

    .line 4155
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/attachment/AttachmentManager;->setVisibility(I)V

    goto :goto_0
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "exit"    # Ljava/lang/Runnable;

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1761
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1774
    :goto_0
    return-void

    .line 1765
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1768
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1773
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private extractTextFromUri(Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 6949
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6953
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 6954
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v3

    .line 6955
    invoke-static {p1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/model/ContentRestriction;->getTextSizeLimit()J

    move-result-wide v5

    .line 6956
    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 6957
    const-string v0, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum Size Allowed Limit. Message Size = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MaxSize Allowed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6958
    const v0, 0x7f0b005d

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6959
    const-string v0, ""

    .line 6987
    :goto_0
    return-object v0

    .line 6961
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 6962
    const-string v0, "ComposeMsgActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Within Size Allowed Limit. Message Size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-int v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MaxSize Allowed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-int v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6966
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 6967
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6971
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6972
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6974
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6979
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 6980
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6983
    :catch_0
    move-exception v0

    .line 6984
    const-string v2, "ComposeMsgActivity"

    const-string v3, "Problem reading uri. "

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6987
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6979
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 6980
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private getDialogFromError(I)I
    .locals 4
    .param p1, "error"    # I

    .prologue
    const/16 v0, 0x11

    .line 767
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 768
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialogFromError, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 783
    :goto_0
    :pswitch_0
    return v0

    .line 775
    :pswitch_1
    const/16 v0, 0x12

    goto :goto_0

    .line 777
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 779
    :pswitch_3
    const/16 v0, 0x13

    goto :goto_0

    .line 781
    :pswitch_4
    const/16 v0, 0x14

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getEditorFilters()[Landroid/text/InputFilter;
    .locals 3

    .prologue
    .line 4214
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4219
    .local v0, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/text/InputFilter;>;"
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4222
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsToMmsConversionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAutoSmsToMmsConversionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4224
    :cond_0
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsThreshold()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4227
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    return-object v1
.end method

.method private getLargestEmailRecipient()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4712
    const/4 v3, 0x0

    .line 4713
    .local v3, "largestEmail":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4714
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4715
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getLargestEmail()Ljava/lang/String;

    move-result-object v3

    .line 4728
    :cond_0
    return-object v3

    .line 4717
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    .line 4718
    .local v0, "cList":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact;

    .line 4719
    .local v1, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4720
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4722
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getMessageCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6127
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-nez v1, :cond_1

    .line 6143
    :cond_0
    :goto_0
    return v0

    .line 6131
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6136
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    if-eqz v1, :cond_0

    .line 6140
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getMessageCount()I

    move-result v0

    goto :goto_0

    .line 6143
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private getRecipients()Lcom/motorola/messaging/contact/ContactList;
    .locals 2

    .prologue
    .line 5447
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5448
    sget-object v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sEmptyContactList:Lcom/motorola/messaging/contact/ContactList;

    if-nez v1, :cond_0

    .line 5449
    new-instance v1, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v1}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    sput-object v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sEmptyContactList:Lcom/motorola/messaging/contact/ContactList;

    .line 5451
    :cond_0
    sget-object v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sEmptyContactList:Lcom/motorola/messaging/contact/ContactList;

    .line 5456
    .local v0, "recipients":Lcom/motorola/messaging/contact/ContactList;
    :goto_0
    return-object v0

    .line 5453
    .end local v0    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    .restart local v0    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    goto :goto_0
.end method

.method private getSendingWarningDialog(Z)I
    .locals 3

    .prologue
    .line 4455
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4456
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSendingWarningDialog, isMMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4467
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4468
    const/4 v0, 0x5

    .line 4490
    :goto_0
    return v0

    .line 4472
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSIMCardAbsent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4473
    const/16 v0, 0x15

    goto :goto_0

    .line 4479
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->hasMmsApn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4480
    const/16 v0, 0x17

    goto :goto_0

    .line 4486
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4487
    const/16 v0, 0x18

    goto :goto_0

    .line 4490
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShortCodes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4602
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4603
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getShortCodes()Ljava/lang/String;

    move-result-object v0

    .line 4607
    .local v0, "shortCodes":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4605
    .end local v0    # "shortCodes":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/ContactList;->getShortCodes()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "shortCodes":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSlideshowActivityIntent(Lcom/motorola/messaging/model/SmilModel;)Landroid/content/Intent;
    .locals 3
    .param p1, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 6373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6374
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 6375
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6376
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6377
    return-object v1
.end method

.method private getTreadInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread=(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleExtraStream(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3875
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3877
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3878
    const-string v1, "text/plain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3879
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {p0, v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->extractTextFromUri(Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 3880
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 3909
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    .line 3910
    return-void

    .line 3883
    :cond_1
    const-string v1, "*/*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3884
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->getTypeFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 3887
    :cond_2
    invoke-static {p2}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3888
    invoke-direct {p0, v0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 3889
    :cond_3
    invoke-static {p2}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3890
    invoke-direct {p0, v0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 3891
    :cond_4
    invoke-static {p2}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3892
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto :goto_0

    .line 3893
    :cond_5
    invoke-static {p2}, Lcom/motorola/messaging/mime/MmsContentType;->isCardType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3894
    const-string v1, "EXTRA_ATTACHMENT_SHARE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3895
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addVcard(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3897
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3898
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 3899
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    goto :goto_0

    .line 3901
    :cond_6
    invoke-static {p2}, Lcom/motorola/messaging/mime/MmsContentType;->isCalendarType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3902
    const-string v1, "EXTRA_ATTACHMENT_SHARE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3903
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 3904
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 3905
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addIcal(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleExtraText(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 3862
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 3863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    .line 3864
    return-void
.end method

.method private handleForwardContextMenuClicked(Ljava/lang/String;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 8

    .prologue
    const/16 v7, 0x50

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1163
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "ComposeMsgActivity"

    const-string v1, "handleForwardContextMenuClicked"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1169
    const-string v0, "exit_on_sent"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    const-string v0, "forwarded_message"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    const v0, 0x7f0b0062

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1174
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1175
    const-string v0, "sms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getRawBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1213
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    const-string v0, "priority"

    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getRawPriority()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1217
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1218
    :goto_1
    return-void

    .line 1178
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->getCreationMode()Lcom/motorola/messaging/model/Model$CreationMode;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq v4, v5, :cond_4

    .line 1184
    :cond_3
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getMmsUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v5}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Z)Lcom/motorola/messaging/model/SmilModel;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1191
    :cond_4
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->showUnsupportedContentWarning(Landroid/app/Activity;Lcom/motorola/messaging/model/SmilModel;)V

    .line 1193
    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ""

    .line 1195
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1196
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1200
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_7

    .line 1201
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1204
    :cond_7
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1207
    if-eqz v0, :cond_8

    .line 1208
    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 1210
    :cond_8
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve smil model"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1193
    :cond_9
    invoke-virtual {p2}, Lcom/motorola/messaging/composer/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private handleForwardedMessage(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4745
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 4746
    const-string v1, "ComposeMsgActivity"

    const-string v2, "handleForwardedMessage"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4751
    :cond_0
    const-string v1, "forwarded_message"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4766
    :goto_0
    return v0

    .line 4755
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v1

    .line 4757
    if-eqz v1, :cond_2

    .line 4758
    invoke-static {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    .line 4759
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setSmilModel(Lcom/motorola/messaging/model/SmilModel;Z)V

    .line 4760
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4765
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v2, "priority"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setPriority(I)V

    .line 4766
    const/4 v0, 0x1

    goto :goto_0

    .line 4762
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleMultipleExtraStream(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3867
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3868
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    .line 3869
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddMultipleImagesTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    .line 3870
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddMultipleImagesTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3871
    return-void
.end method

.method private handleReadReport()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4993
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    if-eqz v0, :cond_0

    .line 4994
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showReadReportDialogIfNeeded()V

    .line 4995
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0, v1, v1}, Lcom/motorola/messaging/conversation/Conversation;->markAsRead(ZZ)V

    .line 4997
    iput-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    .line 4999
    :cond_0
    return-void
.end method

.method private handleReplyToSender(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4770
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 4771
    const-string v1, "ComposeMsgActivity"

    const-string v2, "handleReplyToSender"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    :cond_0
    const-string v1, "reply_to_sender"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4780
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleReplyToSenderContextMenuClicked(Ljava/lang/String;JLcom/motorola/messaging/composer/MessageItem;)V
    .locals 3

    .prologue
    .line 1222
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "ComposeMsgActivity"

    const-string v1, "handleReplyToSenderContextMenuClicked"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :cond_0
    :try_start_0
    const-string v0, "sms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be mms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Reply failed"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1250
    :goto_0
    return-void

    .line 1232
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {p4}, Lcom/motorola/messaging/composer/MessageItem;->getMmsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .line 1234
    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/GenericPdu;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_2

    .line 1237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "from should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1247
    :catch_1
    move-exception v0

    .line 1248
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Reply failed"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1240
    :cond_2
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1241
    const-string v2, "address"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v0, "exit_on_sent"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1243
    const-string v0, "reply_to_sender"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1244
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3772
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3773
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 3774
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3780
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3784
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V

    .line 3830
    :goto_0
    return v0

    .line 3788
    :cond_1
    const-string v5, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3789
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3794
    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    .line 3795
    goto :goto_0

    .line 3798
    :cond_3
    sget-boolean v5, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v5, :cond_4

    .line 3799
    const-string v5, "ComposeMsgActivity"

    const-string v6, "handleSendIntent"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    :cond_4
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3804
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3807
    :cond_5
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3809
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3810
    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleMultipleExtraStream(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 3814
    :cond_6
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3816
    :cond_7
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3817
    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleExtraStream(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 3820
    :cond_8
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3821
    const-string v1, "android.intent.extra.TEXT"

    invoke-direct {p0, v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleExtraText(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 3823
    :cond_9
    const-string v3, "sms_body"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3824
    const-string v1, "sms_body"

    invoke-direct {p0, v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleExtraText(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private handleViewAndSendToIntent(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4784
    .line 4785
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4786
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4787
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4789
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4791
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4792
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 4793
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 4794
    const/4 v0, 0x1

    .line 4796
    :cond_1
    return v0
.end method

.method private hasInvalidRecipients(Z)Z
    .locals 2
    .param p1, "resolveWidget"    # Z

    .prologue
    .line 5422
    const/4 v0, 0x0

    .line 5424
    .local v0, "hasInvalidRecipients":Z
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    if-eqz v1, :cond_1

    .line 5425
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5426
    if-eqz p1, :cond_0

    .line 5427
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->resolveComposerWidget()V

    .line 5429
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->hasInvalidAddress()Z

    move-result v0

    .line 5435
    :cond_1
    :goto_0
    return v0

    .line 5431
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->hasInvalidAddresses()Z

    move-result v0

    goto :goto_0
.end method

.method private hasOnlineAlbumRecipients()Z
    .locals 2

    .prologue
    .line 4403
    const/4 v0, 0x0

    .line 4405
    .local v0, "hasOnlineAlbumRecipients":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsOnlineAlbumEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4406
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4407
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->resolveComposerWidget()V

    .line 4408
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->hasOnlineAlbumAddress()Z

    move-result v0

    .line 4414
    :cond_0
    :goto_0
    return v0

    .line 4410
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->hasOnlineAlbumRecipients()Z

    move-result v0

    goto :goto_0
.end method

.method private hasValidContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4418
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidRecipients(Z)Z
    .locals 2
    .param p1, "resolveWidget"    # Z

    .prologue
    .line 5404
    const/4 v0, 0x0

    .line 5406
    .local v0, "hasValidRecipients":Z
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    if-eqz v1, :cond_1

    .line 5407
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5408
    if-eqz p1, :cond_0

    .line 5409
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->resolveComposerWidget()V

    .line 5411
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->hasValidAddress()Z

    move-result v0

    .line 5417
    :cond_1
    :goto_0
    return v0

    .line 5413
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->hasValidRecipients()Z

    move-result v0

    goto :goto_0
.end method

.method private static hideAllMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1820
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1827
    :cond_0
    return-void

    .line 1823
    :cond_1
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v1

    .line 1824
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1825
    invoke-interface {p0, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 4800
    if-eqz p1, :cond_3

    .line 4801
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4802
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initActivityState: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4805
    :cond_0
    const-string v0, "final_recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4806
    invoke-direct {p0, v8, v9, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initConversation(JLjava/lang/String;)V

    .line 4808
    const-string v0, "compose_mode"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4812
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {v1, p0, v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    .line 4813
    if-eqz v0, :cond_1

    .line 4814
    const-string v0, "working_recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4815
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->fillComposer(Ljava/util/List;)V

    .line 4818
    :cond_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    .line 4819
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 4820
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mModeCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 4821
    const-string v0, "resizedVideoFileName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mResizedVideoFileName:Ljava/lang/String;

    .line 4893
    :cond_2
    :goto_0
    return-void

    .line 4830
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 4831
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initActivityState: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4836
    :cond_4
    invoke-static {p2}, Lcom/motorola/messaging/util/MessageUtils;->adjustIntent(Landroid/content/Intent;)V

    .line 4838
    const-string v0, "compose_mode"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4839
    const-string v0, "multiple_recipients"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 4843
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 4844
    const/4 v0, 0x0

    .line 4848
    cmp-long v5, v1, v8

    if-gtz v5, :cond_5

    .line 4849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4850
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide v8, v1, v7

    .line 4854
    invoke-direct {p0, p2, v1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->processIntentUri(Landroid/content/Intent;[JLjava/lang/StringBuilder;)V

    .line 4855
    aget-wide v1, v1, v7

    .line 4856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4860
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4862
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4863
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4869
    :cond_5
    const-string v5, "clear_cache"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4870
    invoke-static {v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->removeConversationFromCache(J)V

    .line 4873
    :cond_6
    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initConversation(JLjava/lang/String;)V

    .line 4877
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {v0, p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    .line 4879
    if-eqz v4, :cond_7

    .line 4880
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initByGroupMessage()V

    .line 4883
    :cond_7
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    .line 4887
    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleForwardedMessage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReplyToSender(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleViewAndSendToIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4891
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->loadDraft()V

    goto/16 :goto_0
.end method

.method private initConversation(JLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4930
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4931
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConversation, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 4935
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/conversation/Conversation;->get(Landroid/content/Context;J)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    .line 4936
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 4938
    const v0, 0x7f0b019e

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4941
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4942
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, v0, v4, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4943
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4952
    :cond_1
    :goto_0
    return-void

    .line 4946
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4947
    const/4 v0, 0x1

    invoke-static {p3, v3, v0}, Lcom/motorola/messaging/contact/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/messaging/conversation/Conversation;->get(Landroid/content/Context;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    goto :goto_0

    .line 4950
    :cond_3
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->createNew(Landroid/content/Context;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    goto :goto_0
.end method

.method private initEditorFromTextSettings()V
    .locals 3

    .prologue
    .line 4732
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4733
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEditorFromTextSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4736
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->initEditorFromSystemSettings(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 4738
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsEmotIconInKeypadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4739
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 4742
    :cond_1
    return-void
.end method

.method private initMessageList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 4356
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4357
    const-string v0, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initMessageList, mMsgListAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4360
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 4399
    :goto_0
    return-void

    .line 4367
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "highlight"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4368
    iput-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mHighlight:Ljava/util/regex/Pattern;

    .line 4371
    if-eqz v0, :cond_4

    .line 4372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4373
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4374
    const-string v0, "\\b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 4375
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 4376
    if-lez v0, :cond_2

    .line 4377
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4379
    :cond_2
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4382
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mHighlight:Ljava/util/regex/Pattern;

    .line 4386
    :cond_4
    new-instance v0, Lcom/motorola/messaging/adapter/MessageListAdapter;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mHighlight:Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/motorola/messaging/adapter/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    .line 4387
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/adapter/MessageListAdapter;->setOnDataSetChangedListener(Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;)V

    .line 4388
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/adapter/MessageListAdapter;->setCommunicationHandler(Landroid/os/Handler;)V

    .line 4390
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4391
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 4392
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4393
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 4394
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mModeCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 4395
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 4398
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private initResourceRefs()V
    .locals 3

    .prologue
    .line 4194
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    .line 4195
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 4196
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 4197
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4198
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4199
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getEditorFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 4200
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 4201
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 4202
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 4203
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4204
    new-instance v0, Lcom/motorola/messaging/attachment/AttachmentManager;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/attachment/AttachmentManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    .line 4205
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mModeCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    .line 4206
    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4642
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 4643
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4649
    invoke-static {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    .line 4651
    invoke-direct {p0, p1, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 4657
    sget-boolean v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 4658
    const-string v2, "ComposeMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize, intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", recipients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4665
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initMessageList()V

    .line 4668
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4670
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setConversation(Lcom/motorola/messaging/conversation/Conversation;)V

    .line 4673
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 4676
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/attachment/AttachmentManager;->update(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 4681
    :cond_3
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getLargestEmailRecipient()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;

    .line 4684
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->validadeSendingCapability()V

    .line 4687
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V

    .line 4690
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->hasDraft()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4691
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_5

    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V

    .line 4694
    :cond_4
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initializeFocus()V

    .line 4697
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initEditorFromTextSettings()V

    .line 4698
    return-void

    .line 4691
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeFocus()V
    .locals 1

    .prologue
    .line 4955
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->requestFocusOnRecipientBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4957
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4960
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4963
    :cond_0
    return-void
.end method

.method private insertText(Ljava/lang/String;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1127
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1128
    .local v1, "startPos":I
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1131
    .local v0, "endPos":I
    if-ge v0, v1, :cond_0

    .line 1132
    const/4 v2, 0x0

    .line 1133
    .local v2, "temp":I
    move v2, v1

    .line 1134
    move v1, v0

    .line 1135
    move v0, v2

    .line 1137
    .end local v2    # "temp":I
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1138
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1139
    return-void
.end method

.method private isConversationEmpty()Z
    .locals 1

    .prologue
    .line 6089
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty(Z)Z

    move-result v0

    return v0
.end method

.method private isConversationEmpty(Z)Z
    .locals 7
    .param p1, "checkForDraftMessage"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6093
    const/4 v0, 0x0

    .line 6095
    .local v0, "isEmpty":Z
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 6096
    const/4 v0, 0x1

    .line 6111
    :goto_0
    return v0

    .line 6098
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6100
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 6102
    :cond_2
    if-eqz p1, :cond_4

    .line 6103
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getMessageCount()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->hasDraft()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 6106
    :cond_4
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getMessageCount()I

    move-result v3

    if-gtz v3, :cond_5

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private isFocusedViewForVoiceInput()Z
    .locals 2

    .prologue
    .line 1896
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1897
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1899
    :cond_0
    const/4 v1, 0x1

    .line 1901
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOkToSend(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4553
    if-eqz p1, :cond_1

    .line 4554
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isEmergencyCallbackMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4555
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 4556
    const-string v1, "ComposeMsgActivity"

    const-string v2, "isOkToSend - Emergency Callback mode"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4561
    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4597
    :goto_0
    return v0

    .line 4566
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->checkStorage(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4567
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Running low on storage space. Aborting send process."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4572
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4573
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V

    .line 4574
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "out"

    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4579
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasOnlineAlbumRecipients()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4580
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4585
    :cond_4
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->exceedsMsgSizeLimit()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4586
    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4590
    :cond_5
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isInternationalRoaming()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->getRecipientCount()I

    move-result v2

    if-le v2, v1, :cond_6

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getShortCodes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4594
    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4597
    goto :goto_0
.end method

.method private isProgressDialog(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2447
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAttachmentList()V
    .locals 3

    .prologue
    .line 2369
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningForInvalidRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2370
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2388
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "launchAttachmentList"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 2390
    :cond_0
    return-void
.end method

.method private launchSlideShowEditor()V
    .locals 3

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningForInvalidRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2395
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2416
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "launchSlideShowEditor"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 2418
    :cond_0
    return-void
.end method

.method private loadDraft()V
    .locals 2

    .prologue
    .line 5460
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5461
    const-string v0, "ComposeMsgActivity"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    :goto_0
    return-void

    .line 5465
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 5466
    const-string v0, "ComposeMsgActivity"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-static {p0, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->loadDraft(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    goto :goto_0
.end method

.method private moveCursorToMessage(Landroid/database/Cursor;JLjava/lang/String;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "targetMsgId"    # J
    .param p4, "targetMsgType"    # Ljava/lang/String;

    .prologue
    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, "found":Z
    if-eqz p1, :cond_1

    .line 1096
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1097
    const-wide/16 v1, 0x0

    .line 1098
    .local v1, "msgId":J
    const/4 v3, 0x0

    .line 1100
    .local v3, "type":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1103
    cmp-long v4, v1, p2

    if-nez v4, :cond_2

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1104
    const/4 v0, 0x1

    .line 1110
    .end local v1    # "msgId":J
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1107
    .restart local v1    # "msgId":J
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method private onContentDeleted()V
    .locals 2

    .prologue
    .line 5085
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 5086
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onContentDeleted"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.conversations.THREAD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 5093
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V

    .line 5095
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->removeObsoletePending()V

    .line 5096
    return-void
.end method

.method private onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b007b

    const v6, 0x7f0b007a

    const v5, 0x1080027

    const/4 v2, 0x0

    .line 2451
    .line 2452
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$22;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$22;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2462
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$23;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$23;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2473
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2477
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 2926
    :cond_0
    :goto_0
    return-object v0

    .line 2479
    :pswitch_0
    const v0, 0x7f0b0063

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2480
    const v0, 0x7f0b0065

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2481
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2482
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$24;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$24;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2492
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2902
    :goto_1
    if-nez v0, :cond_1

    .line 2903
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2906
    :cond_1
    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$41;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$41;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2913
    if-nez v1, :cond_2

    .line 2914
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$42;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$42;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2920
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2922
    if-eqz v3, :cond_0

    .line 2923
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 2495
    :pswitch_1
    const v0, 0x7f0b0063

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2496
    const v0, 0x7f0b0064

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2497
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2498
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2517
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2518
    goto :goto_1

    .line 2520
    :pswitch_2
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2521
    const v0, 0x7f0b0066

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2522
    const v0, 0x7f0b0067

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2523
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2524
    goto :goto_1

    .line 2526
    :pswitch_3
    const v0, 0x7f0b017e

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2527
    const v0, 0x7f0b00f2

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2528
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2529
    goto :goto_1

    .line 2531
    :pswitch_4
    const v0, 0x7f0b004d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v8

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2535
    goto/16 :goto_1

    .line 2537
    :pswitch_5
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2538
    invoke-static {v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForPictureResizeDialog(Landroid/app/AlertDialog$Builder;I)V

    .line 2539
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$26;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$26;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2544
    goto/16 :goto_1

    .line 2546
    :pswitch_6
    invoke-static {v3}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForCannotSendMsgSizeExceededDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2547
    goto/16 :goto_1

    .line 2549
    :pswitch_7
    invoke-static {v3, p0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForLocationWarningDialog(Landroid/app/AlertDialog$Builder;Landroid/content/Context;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2550
    goto/16 :goto_1

    .line 2553
    :pswitch_8
    const v0, 0x7f0b0099

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2554
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2555
    const v0, 0x7f0b009c

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2556
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2557
    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2558
    goto/16 :goto_1

    .line 2560
    :pswitch_9
    const v0, 0x7f0b0099

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2561
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2562
    const v0, 0x7f0b009d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2563
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2564
    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2565
    goto/16 :goto_1

    .line 2568
    :pswitch_a
    const v0, 0x7f0b0099

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2569
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2570
    const v0, 0x7f030010

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2571
    const v0, 0x7f09003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2572
    const v4, 0x7f0b009e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2573
    const v0, 0x7f090014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2574
    const v4, 0x7f0b00a6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2575
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2576
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2577
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2578
    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2580
    goto/16 :goto_1

    .line 2582
    :pswitch_b
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2583
    const v0, 0x7f0b017c

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2584
    const v0, 0x7f0b017d

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2585
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2587
    goto/16 :goto_1

    .line 2589
    :pswitch_c
    const-string v0, "delete_conv_has_protected"

    invoke-virtual {p2, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2590
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDeleteThreadExecutor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    invoke-static {v1, v0, p0}, Lcom/motorola/messaging/conversation/Conversation;->buildConfirmDeleteThreadDialog(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;ZLandroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move-object v3, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 2593
    goto/16 :goto_1

    .line 2595
    :pswitch_d
    const v4, 0x7f0b015f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2596
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2597
    const v4, 0x7f0b0160

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2598
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v9, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    .line 2601
    goto/16 :goto_1

    .line 2604
    :pswitch_e
    const v4, 0x7f0b0163

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2605
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2606
    const v4, 0x7f0b0164

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2607
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v9, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    .line 2611
    goto/16 :goto_1

    .line 2615
    :pswitch_f
    const v4, 0x7f0b0165

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2616
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2617
    const v4, 0x7f0b0166

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2618
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v9, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    .line 2622
    goto/16 :goto_1

    .line 2624
    :pswitch_10
    const v4, 0x7f0b0161

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2625
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2626
    const v4, 0x7f0b0162

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2627
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v9, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    .line 2630
    goto/16 :goto_1

    .line 2632
    :pswitch_11
    const v0, 0x7f0b00a8

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2633
    const-string v0, " "

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2634
    goto/16 :goto_1

    .line 2636
    :pswitch_12
    const v0, 0x7f0b004e

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2637
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2638
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$27;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$27;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2648
    const/high16 v1, 0x7f060000

    invoke-virtual {v3, v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2649
    goto/16 :goto_1

    .line 2652
    :pswitch_13
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2653
    const v0, 0x7f0b0003

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2654
    const v0, 0x7f030011

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2655
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 2656
    new-instance v4, Lcom/motorola/messaging/adapter/SmileyAdapter;

    invoke-direct {v4, p0}, Lcom/motorola/messaging/adapter/SmileyAdapter;-><init>(Landroid/content/Context;)V

    .line 2657
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2658
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2660
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;

    invoke-direct {v1, p0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/SmileyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2667
    goto/16 :goto_1

    .line 2670
    :pswitch_14
    invoke-static {v3}, Lcom/motorola/messaging/util/DialogBuilder;->buildGenericSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2671
    goto/16 :goto_1

    .line 2673
    :pswitch_15
    invoke-static {v3}, Lcom/motorola/messaging/util/DialogBuilder;->buildNotEnoughMemoryDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2674
    goto/16 :goto_1

    .line 2676
    :pswitch_16
    invoke-static {v3}, Lcom/motorola/messaging/util/DialogBuilder;->buildUnavailableSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2677
    goto/16 :goto_1

    .line 2679
    :pswitch_17
    invoke-static {v3}, Lcom/motorola/messaging/util/DialogBuilder;->buildMissingSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2680
    goto/16 :goto_1

    .line 2682
    :pswitch_18
    const/4 v0, -0x1

    const-string v1, "error_media_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2684
    goto/16 :goto_1

    .line 2686
    :pswitch_19
    const/4 v0, -0x3

    const-string v1, "error_media_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2688
    goto/16 :goto_1

    .line 2690
    :pswitch_1a
    const/4 v0, -0x6

    const-string v1, "error_media_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2692
    goto/16 :goto_1

    .line 2695
    :pswitch_1b
    const/4 v0, -0x2

    const-string v1, "error_media_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2697
    goto/16 :goto_1

    .line 2699
    :pswitch_1c
    const/4 v0, -0x4

    const-string v1, "error_media_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2701
    goto/16 :goto_1

    .line 2703
    :pswitch_1d
    const v0, 0x7f0b00f2

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2704
    const v0, 0x7f0b00f3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2705
    const v0, 0x7f0b0078

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2706
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2707
    goto/16 :goto_1

    .line 2709
    :pswitch_1e
    invoke-static {v3}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForVideoResizeDialog(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2710
    goto/16 :goto_1

    .line 2712
    :pswitch_1f
    const-string v0, "video_resize_error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForVideoResizeError(Landroid/content/Context;Landroid/app/AlertDialog$Builder;I)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2714
    goto/16 :goto_1

    .line 2716
    :pswitch_20
    const v0, 0x7f0b0186

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2717
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2718
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2731
    const v1, 0x7f060006

    invoke-virtual {v3, v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2732
    goto/16 :goto_1

    .line 2737
    :pswitch_21
    const v0, 0x7f030010

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2738
    const v0, 0x7f09003c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2739
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b0187

    invoke-static {p0, v1}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v1

    .line 2741
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2743
    const v0, 0x7f090014

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2744
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2745
    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2746
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2747
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$30;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$30;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2757
    const v0, 0x7f0b0186

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2758
    const v0, 0x108009b

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2759
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2760
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2762
    goto/16 :goto_1

    .line 2739
    :cond_3
    const v1, 0x7f0b0188

    invoke-static {p0, v1}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v1

    goto :goto_2

    .line 2764
    :pswitch_22
    const v0, 0x7f0b0191

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2765
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2766
    const-string v0, " "

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2768
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$31;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$31;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2774
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2775
    goto/16 :goto_1

    .line 2777
    :pswitch_23
    const v0, 0x7f0b019d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2778
    const v0, 0x7f0b01ae

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipients()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2779
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2780
    const v0, 0x104000a

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2781
    goto/16 :goto_1

    .line 2783
    :pswitch_24
    const v0, 0x7f0b019d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2784
    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2785
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2786
    const v0, 0x104000a

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2787
    goto/16 :goto_1

    .line 2789
    :pswitch_25
    const v0, 0x7f0b004d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2792
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v8

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2793
    const v0, 0x104000a

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$32;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$32;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2800
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$33;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$33;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2804
    goto/16 :goto_1

    .line 2806
    :pswitch_26
    const v0, 0x7f0b01b3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2807
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2808
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 2809
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2810
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2812
    const v0, 0x104000a

    new-instance v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$34;

    invoke-direct {v4, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$34;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2820
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$35;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$35;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2826
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2829
    new-instance v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$36;

    invoke-direct {v4, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$36;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2838
    new-instance v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$37;

    invoke-direct {v4, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$37;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2846
    goto/16 :goto_1

    .line 2849
    :pswitch_27
    const v0, 0x7f030010

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2850
    const v0, 0x7f09003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2851
    const v4, 0x7f0b0168

    invoke-static {p0, v4}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2853
    const v0, 0x7f090014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2854
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2855
    const v4, 0x7f0b0181

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2856
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2857
    new-instance v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$38;

    invoke-direct {v4, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$38;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2867
    const v0, 0x7f0b0167

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2868
    const v0, 0x108009b

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2869
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2870
    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2872
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$39;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$39;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    move-object v0, v2

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .line 2881
    goto/16 :goto_1

    .line 2884
    :pswitch_28
    const v0, 0x7f0b018f

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2885
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2886
    const v0, 0x7f0b018e

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2887
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$40;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$40;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2891
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2892
    goto/16 :goto_1

    .line 2895
    :pswitch_29
    invoke-static {v3}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForAddMultipleImagesSizeExceeded(Landroid/app/AlertDialog$Builder;)V

    move-object v0, v2

    move-object v1, v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    .line 2896
    goto/16 :goto_1

    .line 2477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_1e
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_b
        :pswitch_9
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_10
        :pswitch_1d
        :pswitch_e
        :pswitch_f
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_16
        :pswitch_17
        :pswitch_27
        :pswitch_15
        :pswitch_1a
        :pswitch_28
        :pswitch_29
        :pswitch_24
    .end packed-switch
.end method

.method private onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const-wide/16 v0, 0x3e8

    const/4 v3, 0x0

    .line 2930
    .line 2931
    if-eqz p2, :cond_0

    .line 2932
    const-string v2, "progress_min_duration"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2934
    :cond_0
    new-instance v2, Lcom/motorola/messaging/view/MinDurationProgressDialog;

    invoke-direct {v2, v0, v1, p0}, Lcom/motorola/messaging/view/MinDurationProgressDialog;-><init>(JLandroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    .line 2936
    packed-switch p1, :pswitch_data_0

    .line 2950
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$43;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$43;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2960
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$44;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$44;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2967
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 2938
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 2941
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b00a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2942
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 2945
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b00a2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2946
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 2936
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private openVirtualKeypad()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5491
    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setSoftInputMode(Z)V

    .line 5492
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5494
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 5495
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Open virtual keypad "

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    :cond_0
    if-eqz v0, :cond_2

    .line 5499
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 5500
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5501
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 5502
    const-string v0, "ComposeMsgActivity"

    const-string v1, "Failed to open virtual keypad "

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5504
    :cond_1
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 5505
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    .line 5506
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$61;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$61;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5527
    :cond_2
    :goto_0
    return-void

    .line 5515
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 5516
    const-string v0, "ComposeMsgActivity"

    const-string v1, "Number of attempts to open virtual keypad exceeded"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5518
    :cond_4
    iput v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    goto :goto_0

    .line 5521
    :cond_5
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_6

    .line 5522
    const-string v0, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual keypad opened for view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5524
    :cond_6
    iput v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mVKeypadAttempts:I

    goto :goto_0
.end method

.method private openVirtualKeypadForMessageEditor()V
    .locals 2

    .prologue
    .line 5480
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5486
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypad()V

    .line 5488
    :cond_2
    return-void
.end method

.method private processIntentUri(Landroid/content/Intent;[JLjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 4902
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4904
    if-nez v0, :cond_1

    .line 4927
    :cond_0
    :goto_0
    return-void

    .line 4910
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 4912
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4914
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4920
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 4922
    if-eqz v1, :cond_0

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4926
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private processMultipleContactsSelection(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 3474
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 3475
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3476
    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 3477
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 3478
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3479
    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 3483
    :cond_0
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 3549
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3550
    return-void
.end method

.method private processSaveMediaResult(Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4301
    if-nez p1, :cond_1

    .line 4302
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4303
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 4329
    :cond_0
    :goto_0
    return-void

    .line 4305
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4307
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->isSavedToPhoneMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4308
    const v0, 0x7f0b01a4

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getSavedFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4312
    :goto_1
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4310
    :cond_2
    const v0, 0x7f0b01a3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getSavedFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getSdCardFolderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4313
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4314
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4325
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4316
    :pswitch_0
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4319
    :pswitch_1
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4322
    :pswitch_2
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4314
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendingWarnings(Z)V
    .locals 3
    .param p1, "requiresMms"    # Z

    .prologue
    .line 4517
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;IZ)V

    .line 4549
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "process_sending_warnings"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 4550
    return-void
.end method

.method private protectMessage(Lcom/motorola/messaging/composer/MessageItem;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1143
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1148
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1150
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1151
    const-string v4, "locked"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;

    invoke-direct {v0, p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1159
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "protect_msg"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1160
    return-void

    .line 1146
    :cond_0
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 1437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1438
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPowerLongPressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1444
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1445
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1449
    const-string v1, "com.motorola.blur.conversations.ui.ComposeMessageActivity.THREAD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mThreadChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1451
    return-void
.end method

.method private requestFocusOnRecipientBar()Z
    .locals 3

    .prologue
    .line 4966
    const/4 v0, 0x0

    .line 4969
    .local v0, "focus":Z
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getComposerWidget()Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v1

    .line 4970
    .local v1, "widget":Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getForceComposerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4972
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 4973
    const/4 v0, 0x1

    .line 4975
    :cond_2
    return v0
.end method

.method private resetMessage()V
    .locals 2

    .prologue
    .line 4611
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4612
    const-string v0, "ComposeMsgActivity"

    const-string v1, "resetMessage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4616
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/attachment/AttachmentManager;->setVisibility(I)V

    .line 4619
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 4625
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4629
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 4630
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4632
    invoke-static {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    .line 4633
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setConversation(Lcom/motorola/messaging/conversation/Conversation;)V

    .line 4635
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V

    .line 4637
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V

    .line 4638
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4639
    return-void
.end method

.method private restartInComposeMode(Z)V
    .locals 4

    .prologue
    .line 2079
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "out"

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 2100
    :goto_0
    return-void

    .line 2082
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 2084
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 2085
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartInComposeMode, recipients="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2089
    const-string v2, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2090
    const-string v2, "address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2091
    const-string v0, "exit_on_sent"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2092
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2095
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->saveOrDiscardMsg()V

    .line 2098
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private saveOrDiscardMsg()V
    .locals 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/MessagingListActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1597
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 1598
    const-string v0, "ComposeMsgActivity"

    const-string v1, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->discard()V

    goto :goto_0

    .line 1604
    :cond_5
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_6

    .line 1605
    const-string v0, "ComposeMsgActivity"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_6
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->saveDraft()V

    goto :goto_0
.end method

.method private saveTemporaryDraftText()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->saveText(Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method private sendMessage(Z)V
    .locals 5
    .param p1, "checkEcmMode"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4428
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4429
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage, ecmode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v3, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 4433
    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4434
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 4452
    :cond_1
    :goto_0
    return-void

    .line 4436
    :cond_2
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidContent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4437
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSendBlankSmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4438
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4441
    :cond_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 4447
    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isOkToSend(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4451
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->doSend()V

    goto :goto_0
.end method

.method private setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuItemId"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1809
    if-nez p1, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1814
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1815
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setSoftInputMode(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 5473
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 5475
    .local v0, "softInputState":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    or-int/lit8 v2, v0, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5477
    return-void

    .line 5473
    .end local v0    # "softInputState":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setTextEditorCursorAtEnd()V
    .locals 5

    .prologue
    .line 566
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 586
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "signature":Ljava/lang/String;
    const/4 v1, 0x0

    .line 573
    .local v1, "sigLen":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 574
    if-lez v1, :cond_1

    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 578
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    .line 579
    .local v0, "editorLength":I
    sub-int v3, v0, v1

    .line 581
    .local v3, "textEndIndex":I
    if-gez v3, :cond_2

    .line 582
    move v3, v0

    .line 585
    :cond_2
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1574
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1575
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1577
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;

    if-nez v0, :cond_0

    .line 1578
    new-instance v0, Lcom/motorola/messaging/view/InteractiveActionBar;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBarListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/view/InteractiveActionBar;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1582
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1583
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1584
    return-void
.end method

.method private showConvertProtocolToast(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 6147
    const v0, 0x7f0b0070

    .line 6148
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getMessageCount()I

    move-result v1

    .line 6150
    sget-boolean v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 6151
    const-string v2, "ComposeMsgActivity"

    const-string v3, "showConvertProtocolToast, toMms=%s, count=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6154
    :cond_0
    if-eqz p1, :cond_1

    .line 6155
    const v0, 0x7f0b006f

    .line 6158
    :cond_1
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6159
    return-void
.end method

.method private showErrorDialogIfNeeded(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "mediaResId"    # I

    .prologue
    .line 920
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "error_media_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getDialogFromError(I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 924
    :cond_0
    return-void
.end method

.method private showReadReportDialogIfNeeded()V
    .locals 5

    .prologue
    .line 6168
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v1

    .line 6170
    .local v1, "threadId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 6210
    :goto_0
    return-void

    .line 6174
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;J)V

    .line 6209
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const-string v4, "read_report_dialog"

    invoke-virtual {v3, v0, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showRestrictionWarningAndExit(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 3913
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 3914
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 3923
    return-void
.end method

.method private showSubjectEditor(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2194
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 2195
    const-string v0, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSubjectEditor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 2202
    if-nez p1, :cond_1

    .line 2203
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateImeOptions()V

    .line 2237
    :goto_0
    return-void

    .line 2206
    :cond_1
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2207
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectContainer:Landroid/widget/LinearLayout;

    .line 2208
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2210
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 2211
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSubjectSizeLimit()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 2212
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2213
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$17;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$17;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2220
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->initEditorFromSystemSettings(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 2223
    :cond_2
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2225
    if-eqz p1, :cond_4

    .line 2226
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2234
    :goto_2
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateImeOptions()V

    .line 2235
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2236
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2223
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2228
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2230
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 2236
    :cond_5
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private showWarningBar(Z)V
    .locals 3

    .prologue
    .line 2161
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    if-nez v0, :cond_2

    .line 2163
    if-nez p1, :cond_1

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 2167
    :cond_1
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2168
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/WarningBar;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    .line 2171
    :cond_2
    if-eqz p1, :cond_3

    .line 2172
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b018c

    .line 2176
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f02003a

    .line 2179
    :goto_2
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/view/WarningBar;->setText(I)V

    .line 2180
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/view/WarningBar;->setIcon(I)V

    .line 2183
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$16;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$16;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2189
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWarningBar:Lcom/motorola/messaging/view/WarningBar;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/view/WarningBar;->setVisible(Z)V

    goto :goto_0

    .line 2172
    :cond_4
    const v0, 0x7f0b018d

    goto :goto_1

    .line 2176
    :cond_5
    const v1, 0x7f02003b

    goto :goto_2
.end method

.method private showWarningForInvalidRecipient()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2421
    .line 2422
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2423
    const v2, 0x7f0b0053

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2426
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v2, 0x25e4

    .line 4332
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 4333
    const-string v0, "ComposeMsgActivity"

    const-string v1, "startMsgListQuery"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4335
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 4339
    .local v3, "conversationUri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4353
    :cond_1
    :goto_0
    return-void

    .line 4344
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    invoke-virtual {v0, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 4347
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    const/16 v1, 0x25e4

    const/4 v2, 0x0

    sget-object v4, Lcom/motorola/messaging/provider/MessageProjection;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4350
    :catch_0
    move-exception v8

    .line 4351
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 2056
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2059
    const-string v1, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2063
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2067
    return-void
.end method

.method private syncText()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 4162
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4163
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 4168
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4171
    if-eqz v1, :cond_3

    .line 4173
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 4174
    :goto_1
    if-eqz v0, :cond_2

    .line 4175
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 4182
    :goto_2
    return-void

    .line 4165
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4173
    goto :goto_1

    .line 4177
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateText(Ljava/lang/CharSequence;IIIZ)V

    goto :goto_2

    .line 4180
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private totallyDisableBottomPanel()V
    .locals 1

    .prologue
    .line 5377
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableView(Landroid/view/View;)V

    .line 5378
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableView(Landroid/view/View;)V

    .line 5379
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableView(Landroid/view/View;)V

    .line 5380
    return-void
.end method

.method private totallyDisableView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 5367
    if-nez p1, :cond_0

    .line 5374
    :goto_0
    return-void

    .line 5370
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 5371
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5372
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 5373
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private totallyEnableView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 5356
    if-nez p1, :cond_0

    .line 5363
    :goto_0
    return-void

    .line 5359
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 5360
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5361
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 5362
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private updateImeOptions()V
    .locals 4

    .prologue
    const v1, 0x40000006

    const v0, 0x40000005

    .line 3834
    .line 3841
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3842
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3850
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 3851
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3853
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3854
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->setImeOptions(I)V

    .line 3856
    :cond_1
    return-void

    :cond_2
    move v3, v1

    move v1, v0

    move v0, v3

    .line 3845
    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 5338
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v1

    .line 5339
    .local v1, "threadId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 5353
    :goto_0
    return-void

    .line 5345
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;J)V

    .line 5352
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const-string v4, "update_send_failed_notif"

    invoke-virtual {v3, v0, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUIForAddingMedia(Z)V
    .locals 2
    .param p1, "addingMediaStatus"    # Z

    .prologue
    .line 913
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->setAddingMedia(Z)V

    .line 916
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 917
    return-void

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validadeSendingCapability()V
    .locals 2

    .prologue
    .line 4108
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4114
    :cond_0
    const-string v0, "ComposeMsgActivity"

    const-string v1, "Don\'t Create Bottom Panel. Outgoing MSG is Blocked"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V

    .line 4116
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "out"

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 4126
    :cond_1
    :goto_0
    return-void

    .line 4118
    :cond_2
    const-string v0, "out"

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showRestrictionWarningAndExit(Ljava/lang/String;)V

    goto :goto_0

    .line 4120
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->hasInvalidAddresses()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4123
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4124
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V

    goto :goto_0
.end method

.method private viewMessageRecipients()V
    .locals 3

    .prologue
    .line 4704
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/messaging/activity/ContactsGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4705
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4706
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    .line 4707
    const-string v2, "contacts"

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/ContactList;->getAddressesAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4708
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4709
    return-void
.end method

.method private viewMmsContent(Lcom/motorola/messaging/model/SmilModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6329
    if-nez p1, :cond_1

    .line 6330
    const-string v0, "ComposeMsgActivity"

    const-string v1, "Null model received"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6370
    :cond_0
    :goto_0
    return-void

    .line 6332
    :cond_1
    const/4 v0, 0x0

    .line 6333
    invoke-static {p1}, Lcom/motorola/messaging/util/MessageUtils;->getMMSMediaType(Lcom/motorola/messaging/model/SmilModel;)I

    move-result v1

    .line 6334
    packed-switch v1, :pswitch_data_0

    .line 6366
    :goto_1
    if-eqz v0, :cond_0

    .line 6367
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6336
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6337
    invoke-virtual {p1, v1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 6338
    const-string v0, "LIST_MODE"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6339
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 6346
    :pswitch_1
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6350
    :pswitch_2
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->getSimpleSlide()Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 6351
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6354
    :pswitch_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->playAudioAsSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6355
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getSlideshowActivityIntent(Lcom/motorola/messaging/model/SmilModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6357
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->getSimpleSlide()Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 6358
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6362
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getSlideshowActivityIntent(Lcom/motorola/messaging/model/SmilModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1684
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1685
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1690
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1691
    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    if-ne v1, v2, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/messaging/conversation/Conversation;->markAsRead(ZZ)V

    .line 1694
    iput-boolean v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z

    .line 1700
    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1697
    .restart local v0    # "keyCode":I
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1669
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V

    .line 1671
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1677
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V

    .line 1679
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3296
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 3297
    const-string v0, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/messaging/activity/MessagingListActivity;->mWaitingForSubActivity:Z

    .line 3306
    if-eq p2, v6, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    .line 3471
    :cond_1
    :goto_0
    return-void

    .line 3310
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3360
    :pswitch_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsShowLocationWarning()Z

    move-result v0

    if-ne v0, v5, :cond_7

    .line 3361
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3315
    :pswitch_2
    if-eqz p3, :cond_d

    .line 3316
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 3319
    :goto_1
    if-eqz v0, :cond_5

    .line 3320
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1, v0, v5}, Lcom/motorola/messaging/composer/WorkingMessage;->setSmilModel(Lcom/motorola/messaging/model/SmilModel;Z)V

    .line 3322
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->removeMmsForcedState()V

    .line 3325
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3326
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3327
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 3336
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->syncText()V

    .line 3337
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setTextEditorCursorAtEnd()V

    .line 3338
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V

    goto :goto_0

    .line 3330
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3331
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    goto :goto_2

    .line 3341
    :cond_5
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0, v4, v1, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Z)I

    goto :goto_0

    .line 3348
    :pswitch_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/provider/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3349
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3351
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsShowLocationWarning()Z

    move-result v1

    if-ne v1, v5, :cond_6

    .line 3352
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3354
    :cond_6
    invoke-direct {p0, v0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3363
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3369
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3374
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3379
    :pswitch_6
    if-ne p2, v5, :cond_8

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mResizedVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3381
    invoke-direct {p0, v0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 3382
    :cond_8
    if-eqz p2, :cond_1

    .line 3385
    const/16 v0, 0xe

    if-eq p2, v0, :cond_1

    .line 3386
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "video_resize_error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3387
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 3393
    :pswitch_7
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3394
    if-eqz v0, :cond_1

    .line 3395
    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_0

    .line 3400
    :pswitch_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3401
    new-instance v1, Landroid/content/Intent;

    const-string v2, "motorola.intent.action.PICK"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3402
    const-string v0, "INTENTEXTRA_BOOLEAN_PARTIAL_FIELD_PICKER_RETURN_BACK"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3403
    const/16 v0, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3407
    :pswitch_9
    const-string v0, "com.android.contacts.SelectionResultIncluded"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3408
    if-eqz v0, :cond_9

    .line 3409
    invoke-direct {p0, p3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->processMultipleContactsSelection(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3424
    :cond_9
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 3428
    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3431
    if-eqz v2, :cond_1

    .line 3435
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3436
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3437
    if-eqz v0, :cond_1

    .line 3441
    :goto_3
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3442
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->insertText(Ljava/lang/String;)V

    .line 3445
    :cond_a
    if-eqz v0, :cond_1

    .line 3446
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addVcard(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3450
    :pswitch_b
    invoke-direct {p0, p3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addLocation(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3453
    :pswitch_c
    if-ne v6, p2, :cond_1

    .line 3454
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isFocusedViewForVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3457
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3459
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3460
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 3461
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3463
    :cond_b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_3

    :cond_d
    move-object v0, v1

    goto/16 :goto_1

    .line 3310
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 5968
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5977
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4185
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 4186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sendMessage(Z)V

    .line 4188
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1430
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1431
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1326
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1327
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1328
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() - START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->checkStorage(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1335
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 1339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setSoftInputMode(Z)V

    .line 1342
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initResourceRefs()V

    .line 1344
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setupActionBar()V

    .line 1346
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 1347
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    .line 1350
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    .line 1353
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V

    .line 1355
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->startMsgListQuery()V

    .line 1357
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1358
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1359
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->slideBottomPanel(Landroid/view/View;Z)V

    .line 1366
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypadForMessageEditor()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 1374
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onCreate() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_2
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    :try_start_1
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG-STATUS generic exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1373
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 1374
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onCreate() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2431
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/activity/MessagingListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 2435
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 2442
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 2439
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isProgressDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2440
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2442
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1778
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1779
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    const v0, 0x7f0b0017

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1788
    const v0, 0x7f0b0050

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1789
    const v0, 0x7f0b004d

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1792
    const v0, 0x7f0b0052

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1793
    const v0, 0x7f0b0003

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1794
    const/4 v0, 0x7

    const/4 v1, 0x7

    const v2, 0x7f0b0016

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1795
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSubjectEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    const/16 v0, 0x9

    const/16 v1, 0x9

    const v2, 0x7f0b004f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1798
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1799
    const/16 v0, 0x8

    const/16 v1, 0x8

    const v2, 0x7f0b004e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1801
    :cond_2
    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f0b0189

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1802
    const/16 v0, 0xa

    const/16 v1, 0xa

    const v2, 0x7f0b0051

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1803
    const/4 v0, 0x6

    const/4 v1, 0x6

    const v2, 0x7f0b0185

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1804
    const/16 v0, 0xb

    const/16 v1, 0xb

    const v2, 0x7f0b0011

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1805
    return v4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1508
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1509
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onDestroy() - START"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1519
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    if-eqz v1, :cond_1

    .line 1520
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->destroy()V

    .line 1524
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddMultipleImagesTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    if-eqz v1, :cond_2

    .line 1525
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddMultipleImagesTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->abort()V

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 1530
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 1534
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    if-eqz v1, :cond_6

    .line 1536
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1540
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->saveTemporaryDraftText()V

    .line 1541
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->discard()V

    .line 1550
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 1551
    .local v0, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    if-eqz v0, :cond_5

    .line 1552
    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 1556
    :cond_5
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->deleteThreadIfEmpty()V

    .line 1559
    .end local v0    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_6
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-eqz v1, :cond_7

    .line 1561
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1564
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->clearAdapters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_8

    .line 1568
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onDestroy() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :cond_8
    return-void

    .line 1542
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1547
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1567
    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_a

    .line 1568
    const-string v2, "ComposeMsgActivity"

    const-string v3, "onDestroy() - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    throw v1
.end method

.method public onDraftsLoaded()V
    .locals 1

    .prologue
    .line 5980
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5993
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1705
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1708
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1754
    :goto_0
    return v0

    .line 1710
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1754
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1712
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    if-eqz v0, :cond_1

    .line 1722
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v3, "delete_message_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1723
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v3, "delete_message_type"

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1725
    const/16 v0, 0x10

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    :goto_1
    move v0, v1

    .line 1729
    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1718
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1727
    :cond_2
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1738
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1739
    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->sendMessage(Z)V

    move v0, v1

    .line 1740
    goto :goto_0

    .line 1743
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1746
    :sswitch_2
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$13;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    move v0, v1

    .line 1751
    goto :goto_0

    .line 1710
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMessageSent()V
    .locals 2

    .prologue
    .line 6000
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 6001
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onMessageSent"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6004
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgSendingInProgress:Z

    .line 6007
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    if-nez v0, :cond_1

    .line 6008
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6037
    :goto_0
    return-void

    .line 6033
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->saveOrDiscardMsg()V

    .line 6035
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->deleteThreadIfEmpty()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1951
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onOptionsItemSelected() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() - itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2046
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 2047
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onOptionsItemSelected() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v5

    .line 1960
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1961
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2046
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 2047
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onOptionsItemSelected() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1965
    :sswitch_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 1966
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1967
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypad()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2046
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 2047
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onOptionsItemSelected() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0

    .line 1972
    :sswitch_2
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasValidRecipients(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1973
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1976
    :cond_3
    const v0, 0x7f0b0053

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1980
    :sswitch_3
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1983
    :sswitch_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v1

    const/16 v3, 0x25e5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/conversation/Conversation;->startQueryHasProtectedMessages(Landroid/content/AsyncQueryHandler;JILjava/lang/Object;)V

    goto :goto_0

    .line 1987
    :sswitch_5
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1990
    :sswitch_6
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2006
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "start_calling_application"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    goto :goto_0

    .line 2009
    :sswitch_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2012
    :sswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->restartInComposeMode(Z)V

    goto/16 :goto_0

    .line 2015
    :sswitch_9
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMessageRecipients()V

    goto/16 :goto_0

    .line 2018
    :sswitch_a
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2022
    :sswitch_b
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 2025
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2026
    const-string v1, "mailto"

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2031
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2032
    const/high16 v0, 0x14200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2033
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2028
    :cond_4
    const-string v1, "tel"

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 2037
    :sswitch_c
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->startVoiceRecognitionActivity()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1957
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x2 -> :sswitch_2
        0x3 -> :sswitch_b
        0x4 -> :sswitch_5
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
        0xa -> :sswitch_8
        0xb -> :sswitch_c
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 6043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgSendingInProgress:Z

    .line 6044
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    if-nez v0, :cond_0

    .line 6045
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6058
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v6, 0x7f090014

    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 2972
    .line 2975
    sparse-switch p1, :sswitch_data_0

    .line 3292
    :goto_0
    return-void

    .line 2978
    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2979
    const-string v2, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isLocationAppAvailable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2980
    const-string v2, "motorola.intent.action.PICK"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isNamecardSupported()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2982
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2983
    invoke-static {p0, v1, v0}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->getAdapter(Landroid/content/Context;ILandroid/os/Bundle;)Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move-object v0, p2

    .line 2991
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v0, p2

    .line 2992
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;

    invoke-direct {v2, p0, v1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 2987
    :cond_0
    invoke-static {p0, v5, v0}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->getAdapter(Landroid/content/Context;ILandroid/os/Bundle;)Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 3001
    :sswitch_1
    const-string v0, "delete_conv_has_protected"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3002
    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3003
    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3004
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3003
    :cond_1
    const/16 v0, 0x8

    goto :goto_2

    .line 3007
    :sswitch_2
    const-string v0, "resize_image_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3008
    const-string v1, "resize_append"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3009
    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;

    invoke-direct {v2, p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    move-object v0, p2

    .line 3010
    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f0b007d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3014
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$46;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$46;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {p2, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3024
    :sswitch_3
    const-string v0, "resize_video_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 3025
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/Intent;)V

    .line 3026
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x1040013

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v10, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3032
    :sswitch_4
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "video_resize_error"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/messaging/model/VideoResizingUtils;->getVideoResizeErrorDialogBody(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3036
    :sswitch_5
    const-string v0, "geo_tagged_image_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3037
    const-string v0, "append"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3039
    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 3040
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3041
    const v0, 0x7f0b0181

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3042
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$47;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$47;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v6, p2

    .line 3049
    check-cast v6, Landroid/app/AlertDialog;

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/widget/CheckBox;Landroid/net/Uri;ZLandroid/app/Dialog;)V

    invoke-virtual {v6, v10, v7, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3064
    :sswitch_6
    const-string v0, "convert_to_mms_new_text"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3065
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0b00f2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;

    invoke-direct {v2, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3084
    :sswitch_7
    const-string v0, "delete_message_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3085
    const-string v0, "delete_message_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3087
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;JLjava/lang/String;Z)V

    .line 3088
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0b0078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V

    invoke-virtual {p2, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3096
    :sswitch_8
    const-string v0, "multiple_delete_sms_ids"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 3097
    if-eqz v3, :cond_8

    .line 3098
    array-length v0, v3

    .line 3100
    :goto_3
    const-string v2, "multiple_delete_mms_ids"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 3101
    if-eqz v4, :cond_7

    .line 3102
    array-length v2, v4

    add-int/2addr v0, v2

    move v2, v0

    :goto_4
    move-object v0, p2

    .line 3105
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0004

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3109
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V

    .line 3111
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0b00a4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V

    invoke-virtual {p2, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3118
    :sswitch_9
    const-string v0, "delete_message_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3119
    const-string v0, "delete_message_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3121
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;JLjava/lang/String;Z)V

    .line 3123
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0b00a4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V

    invoke-virtual {p2, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3130
    :sswitch_a
    const-string v0, "multiple_delete_sms_ids"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 3131
    const-string v2, "multiple_delete_mms_ids"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 3133
    new-instance v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V

    move-object v0, p2

    .line 3134
    check-cast v0, Landroid/app/AlertDialog;

    const v2, 0x7f0b00a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v4, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V

    invoke-virtual {v0, v10, v2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3139
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3140
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3141
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;

    invoke-direct {v1, p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 3153
    :sswitch_b
    const-string v0, "message_details"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3154
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3158
    :sswitch_c
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getPriority()I

    move-result v0

    .line 3160
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x82

    if-ne v0, v2, :cond_3

    :cond_2
    move v1, v5

    .line 3169
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$51;

    invoke-direct {v2, p0, p2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$51;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3175
    :sswitch_d
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3176
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3180
    :goto_5
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    new-instance v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;

    invoke-direct {v3, p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/widget/ListView;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move v1, v5

    .line 3176
    goto :goto_5

    :sswitch_e
    move-object v0, p2

    .line 3186
    check-cast v0, Landroid/app/AlertDialog;

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v10, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3189
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v10, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_f
    move-object v0, p2

    .line 3193
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x3

    const-string v2, "error_media_type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3196
    check-cast p2, Landroid/app/AlertDialog;

    const/4 v0, -0x3

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_10
    move-object v0, p2

    .line 3200
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x6

    const-string v2, "error_media_type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3203
    check-cast p2, Landroid/app/AlertDialog;

    const/4 v0, -0x6

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_11
    move-object v0, p2

    .line 3207
    check-cast v0, Landroid/app/AlertDialog;

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3210
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_12
    move-object v0, p2

    .line 3214
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x4

    const-string v2, "error_media_type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3217
    check-cast p2, Landroid/app/AlertDialog;

    const/4 v0, -0x4

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3221
    :sswitch_13
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "msgId_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3222
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v2, "from_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3223
    check-cast p2, Landroid/app/AlertDialog;

    const v2, 0x7f0b0078

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    invoke-direct {v3, p0, v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v10, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 3249
    :sswitch_14
    const-string v0, "do_protect"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3250
    const-string v2, "protect_count"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3252
    if-eqz v0, :cond_5

    const v0, 0x7f0b009f

    .line 3254
    :goto_6
    check-cast p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3252
    :cond_5
    const v0, 0x7f0b00a0

    goto :goto_6

    .line 3259
    :sswitch_15
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0b0187

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    .line 3261
    :goto_7
    const v0, 0x7f09003c

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 3259
    :cond_6
    const v0, 0x7f0b0188

    invoke-static {p0, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    goto :goto_7

    .line 3266
    :sswitch_16
    const v0, 0x7f0b0190

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getShortCodes()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3267
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3270
    :sswitch_17
    const-string v0, "choose_button_adapter"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    .line 3271
    const-string v1, "choose_button_title"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    .line 3272
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3273
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 3274
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3276
    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$54;

    invoke-direct {v2, p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$54;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 3283
    :sswitch_18
    const-string v0, "edit_button_address"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3284
    check-cast p2, Landroid/app/AlertDialog;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3286
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 3289
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v2, v0

    goto/16 :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_3

    .line 2975
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_7
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xe -> :sswitch_6
        0x10 -> :sswitch_9
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x16 -> :sswitch_13
        0x19 -> :sswitch_8
        0x1a -> :sswitch_a
        0x1b -> :sswitch_5
        0x1d -> :sswitch_d
        0x1e -> :sswitch_15
        0x1f -> :sswitch_16
        0x20 -> :sswitch_4
        0x22 -> :sswitch_17
        0x23 -> :sswitch_18
        0x28 -> :sswitch_10
        0x65 -> :sswitch_14
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1831
    invoke-static {p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hideAllMenuItems(Landroid/view/Menu;)V

    .line 1833
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1834
    const/4 v5, 0x7

    invoke-direct {p0, p1, v5, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1837
    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasInvalidRecipients(Z)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1840
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1841
    const/16 v5, 0x8

    invoke-direct {p0, p1, v5, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1843
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSubjectEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1844
    const/16 v5, 0x9

    invoke-direct {p0, p1, v5, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1847
    :cond_1
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1849
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1851
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIsLocationVCardMandatory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getIsLocationVCardEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_2
    move v0, v4

    .line 1857
    .local v0, "locationVCardEnabled":Z
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isLocationAppAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1859
    :cond_4
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1866
    .end local v0    # "locationVCardEnabled":Z
    :cond_5
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->isWorthSaving()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v5, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1868
    :cond_6
    invoke-direct {p0, p1, v4, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1872
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1874
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1877
    :cond_8
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    .line 1878
    .local v2, "recipients":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1879
    .local v1, "recipientCount":I
    if-lez v1, :cond_9

    .line 1880
    if-le v1, v4, :cond_c

    .line 1881
    const/4 v3, 0x6

    invoke-direct {p0, p1, v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1886
    :goto_1
    const/16 v3, 0xa

    invoke-direct {p0, p1, v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1889
    .end local v1    # "recipientCount":I
    .end local v2    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_9
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getVoiceRecognitionEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->isFocusedViewForVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1890
    const/16 v3, 0xb

    invoke-direct {p0, p1, v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1892
    :cond_a
    return v4

    :cond_b
    move v0, v3

    .line 1851
    goto :goto_0

    .line 1883
    .restart local v1    # "recipientCount":I
    .restart local v2    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_c
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addSaveContactItem(Landroid/view/Menu;)V

    .line 1884
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->addCallItem(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public onProtocolChanged(ZI)V
    .locals 1
    .param p1, "isMms"    # Z
    .param p2, "messageState"    # I

    .prologue
    .line 6061
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6062
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;

    invoke-direct {v0, p0, p2, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;IZ)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6086
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 1388
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1390
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->unDiscard()V

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-eqz v1, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lcom/motorola/messaging/adapter/MessageListAdapter;->restartAutoRequery()V

    .line 1400
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->requestFocusOnRecipientBar()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1402
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1403
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 1404
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1407
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 1455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1457
    sget-boolean v3, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 1458
    const-string v3, "ComposeMsgActivity"

    const-string v4, "onResume() - START"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    .line 1463
    .local v2, "recipients":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 1464
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1468
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 1469
    const-string v4, "ComposeMsgActivity"

    const-string v5, "onResume() - END"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v3

    .line 1468
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_2
    sget-boolean v3, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 1469
    const-string v3, "ComposeMsgActivity"

    const-string v4, "onResume() - END"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1624
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1625
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1626
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onSaveInstanceState() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1634
    const-string v0, "compose_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1635
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1636
    if-eqz v0, :cond_1

    .line 1637
    const-string v1, "working_recipients"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1643
    :cond_1
    :goto_0
    const-string v0, "resizedVideoFileName"

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mResizedVideoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 1646
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mModeCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 1648
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_2

    .line 1649
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 1654
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onSaveInstanceState() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_3
    return-void

    .line 1640
    :cond_4
    :try_start_1
    const-string v0, "final_recipients"

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1653
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_5

    .line 1654
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onSaveInstanceState() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1411
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1413
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1414
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() - START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->registerReceivers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1422
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onStart() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_1
    return-void

    .line 1421
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 1422
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onStart() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1476
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1477
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1478
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onStop() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    const/16 v1, 0x25e4

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1484
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    const/16 v1, 0x25e5

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1488
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPowerLongPressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1489
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1490
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mThreadChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1493
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->saveOrDiscardMsg()V

    .line 1495
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/adapter/MessageListAdapter;->stopAutoRequery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 1501
    const-string v0, "ComposeMsgActivity"

    const-string v1, "onStop() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_3
    return-void

    .line 1500
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_4

    .line 1501
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onStop() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    throw v0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->blockMessage(I)V

    .line 1383
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 1384
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1661
    if-eqz p1, :cond_0

    .line 1662
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V

    .line 1664
    :cond_0
    return-void
.end method
