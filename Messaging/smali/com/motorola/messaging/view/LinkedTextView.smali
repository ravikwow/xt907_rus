.class public Lcom/motorola/messaging/view/LinkedTextView;
.super Landroid/widget/TextView;
.source "LinkedTextView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;
    }
.end annotation


# instance fields
.field private mExternalListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

.field private mLink:Landroid/text/style/URLSpan;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mSpannable:Landroid/text/Spannable;

.field private mStartTimeMillis:J

.field private mTouchStartY:I

.field private mTouchState:I

.field private mWaitingKeyFinishEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    const v1, -0xff312f

    invoke-direct {v0, v1}, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    .line 80
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 230
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/LinkedTextView$1;-><init>(Lcom/motorola/messaging/view/LinkedTextView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    const v1, -0xff312f

    invoke-direct {v0, v1}, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    .line 80
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 230
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/LinkedTextView$1;-><init>(Lcom/motorola/messaging/view/LinkedTextView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    const v1, -0xff312f

    invoke-direct {v0, v1}, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    .line 80
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 230
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/LinkedTextView$1;-><init>(Lcom/motorola/messaging/view/LinkedTextView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/messaging/view/LinkedTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/LinkedTextView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    return p1
.end method

.method static synthetic access$101(Lcom/motorola/messaging/view/LinkedTextView;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/LinkedTextView;
    .param p1, "x1"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method static synthetic access$201(Lcom/motorola/messaging/view/LinkedTextView;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/LinkedTextView;
    .param p1, "x1"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method private addAddContactItem(Landroid/view/ContextMenu;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "id"    # I
    .param p3, "extraType"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "addContactIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "phone"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    :cond_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 340
    return-void
.end method

.method private addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$2;

    invoke-direct {v0, p0, p3}, Lcom/motorola/messaging/view/LinkedTextView$2;-><init>(Lcom/motorola/messaging/view/LinkedTextView;Ljava/lang/String;)V

    .line 311
    .local v0, "copyLinkListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 312
    return-void
.end method

.method private addShareItem(Landroid/view/ContextMenu;ILjava/lang/String;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Lcom/motorola/messaging/view/LinkedTextView$3;

    invoke-direct {v0, p0, p3}, Lcom/motorola/messaging/view/LinkedTextView$3;-><init>(Lcom/motorola/messaging/view/LinkedTextView;Ljava/lang/String;)V

    .line 325
    .local v0, "shareLinkListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 326
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 219
    invoke-direct {p0}, Lcom/motorola/messaging/view/LinkedTextView;->endTouch()V

    .line 220
    return-void
.end method

.method private createLinkContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;Landroid/text/style/URLSpan;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "link"    # Landroid/text/style/URLSpan;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 263
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0e0002

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 269
    invoke-virtual {p3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "scheme":Ljava/lang/String;
    const-string v3, "tel:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    const v3, 0x7f0900a1

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 273
    const v3, 0x7f0900a4

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 274
    const v3, 0x7f0900a5

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addShareItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 275
    const v3, 0x7f0900a6

    const-string v4, "phone"

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addAddContactItem(Landroid/view/ContextMenu;ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    const v3, 0x7f0900a2

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 277
    const v3, 0x7f0900a3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    invoke-static {v6, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 298
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string v3, "mailto:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    const v3, 0x7f0900a7

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 280
    const v3, 0x7f0900aa

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 281
    const v3, 0x7f0900ab

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addShareItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 282
    const v3, 0x7f0900ac

    const-string v4, "email"

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addAddContactItem(Landroid/view/ContextMenu;ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    const v3, 0x7f0900a8

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 284
    const v3, 0x7f0900a9

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    invoke-static {v6, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 285
    :cond_1
    const-string v3, "geo:0,0?q="

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    const v3, 0x7f0900ad

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 287
    const v3, 0x7f0900af

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 288
    const v3, 0x7f0900b0

    const-string v4, "postal"

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addAddContactItem(Landroid/view/ContextMenu;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    const v3, 0x7f0900ae

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "geo:0,0?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 291
    :cond_2
    const v3, 0x7f0900b1

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 292
    const v3, 0x7f0900b4

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 293
    const v3, 0x7f0900b3

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/messaging/view/LinkedTextView;->addShareItem(Landroid/view/ContextMenu;ILjava/lang/String;)V

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .local v1, "launchBrowser":Landroid/content/Intent;
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const v3, 0x7f0900b2

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private endTouch()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-virtual {v0, p0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mStartTimeMillis:J

    .line 211
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 214
    :cond_1
    return-void
.end method

.method private isOverLink(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_5

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 160
    if-eq v0, v3, :cond_0

    if-nez v0, :cond_5

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 167
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int v5, v0, v2

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v0, v1

    .line 172
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 175
    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 176
    int-to-float v0, v5

    invoke-virtual {v6, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 178
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v1, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 186
    array-length v7, v0

    if-eqz v7, :cond_1

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_2

    :cond_1
    if-lez v2, :cond_2

    .line 187
    add-int/lit8 v2, v2, -0x1

    .line 188
    int-to-float v0, v5

    invoke-virtual {v6, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 189
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 193
    :cond_2
    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 194
    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_4

    move v0, v3

    .line 200
    :goto_0
    return v0

    :cond_4
    move v0, v4

    .line 197
    goto :goto_0

    :cond_5
    move v0, v4

    .line 200
    goto :goto_0
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchStartY:I

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 228
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 251
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v2, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v4, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-interface {v3, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/messaging/view/LinkedTextView;->createLinkContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;Landroid/text/style/URLSpan;)V

    .line 253
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mExternalListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mExternalListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x437f0000

    const/high16 v7, 0x3f800000

    .line 349
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 350
    const/4 v0, 0x1

    .line 352
    .local v0, "done":Z
    iget v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    packed-switch v3, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-wide v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mStartTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;->setAlpha(I)V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mStartTimeMillis:J

    .line 358
    :cond_1
    iget-wide v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mStartTimeMillis:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/messaging/view/LinkedTextView;->mStartTimeMillis:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 361
    .local v1, "normalized":F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_3

    const/4 v0, 0x1

    .line 362
    :goto_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 364
    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    mul-float v4, v8, v1

    sub-float v4, v8, v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;->setAlpha(I)V

    .line 372
    .end local v1    # "normalized":F
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v4, p0, Lcom/motorola/messaging/view/LinkedTextView;->mHighlightSpan:Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;

    iget-object v5, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v6, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-interface {v5, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    iget-object v7, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-interface {v6, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 374
    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .restart local v1    # "normalized":F
    :cond_3
    move v0, v2

    .line 361
    goto :goto_1

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x17

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    .line 395
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v6, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 401
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 402
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    iget-object v3, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v3, v4, v0, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 406
    array-length v3, v0

    if-ne v3, v1, :cond_0

    .line 407
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_2

    .line 411
    iput-boolean v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mWaitingKeyFinishEvent:Z

    .line 413
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 419
    :goto_0
    if-nez v0, :cond_1

    if-eq p1, v6, :cond_1

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 422
    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x17

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 449
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mWaitingKeyFinishEvent:Z

    .line 450
    invoke-virtual {p0}, Lcom/motorola/messaging/view/LinkedTextView;->performLongClick()Z

    .line 451
    const/4 v0, 0x1

    .line 456
    :cond_0
    if-nez v0, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    .line 457
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 460
    :cond_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x17

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 430
    iget-boolean v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mWaitingKeyFinishEvent:Z

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    invoke-virtual {v1, p0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mWaitingKeyFinishEvent:Z

    .line 433
    const/4 v0, 0x1

    .line 439
    :cond_0
    if-nez v0, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    .line 440
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 442
    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/LinkedTextView;->isOverLink(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    invoke-direct {p0}, Lcom/motorola/messaging/view/LinkedTextView;->cancelTouch()V

    .line 125
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 128
    :goto_1
    return v1

    .line 103
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/LinkedTextView;->startTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchStartY:I

    sub-int v0, v1, v2

    .line 110
    .local v0, "scrolledDistance":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 111
    const/4 v1, 0x2

    iput v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    .line 112
    invoke-direct {p0}, Lcom/motorola/messaging/view/LinkedTextView;->endTouch()V

    goto :goto_0

    .line 118
    .end local v0    # "scrolledDistance":I
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/messaging/view/LinkedTextView;->endTouch()V

    goto :goto_0

    .line 128
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mLink:Landroid/text/style/URLSpan;

    if-eqz v1, :cond_0

    .line 241
    # invokes: Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    invoke-static {p0, p0}, Lcom/motorola/messaging/view/LinkedTextView;->access$101(Lcom/motorola/messaging/view/LinkedTextView;Landroid/view/View$OnCreateContextMenuListener;)V

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    .line 244
    const/4 v1, 0x0

    # invokes: Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    invoke-static {p0, v1}, Lcom/motorola/messaging/view/LinkedTextView;->access$201(Lcom/motorola/messaging/view/LinkedTextView;Landroid/view/View$OnCreateContextMenuListener;)V

    .line 245
    return v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 381
    if-eqz p1, :cond_0

    .line 382
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 387
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    goto :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mExternalListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 345
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 142
    iget v0, p0, Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/motorola/messaging/view/LinkedTextView;->cancelTouch()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 147
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 153
    :goto_0
    return-void

    .line 150
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    iput-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView;->mSpannable:Landroid/text/Spannable;

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method
