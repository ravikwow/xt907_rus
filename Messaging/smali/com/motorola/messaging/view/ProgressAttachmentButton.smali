.class public Lcom/motorola/messaging/view/ProgressAttachmentButton;
.super Landroid/widget/RelativeLayout;
.source "ProgressAttachmentButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;
    }
.end annotation


# static fields
.field private static mFadeIn:Landroid/view/animation/Animation;


# instance fields
.field private mAttachmentButton:Landroid/widget/ImageButton;

.field private mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoveMessageId:I

.field private mViewMessageId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/ProgressAttachmentButton;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->removeAttachment()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/ProgressAttachmentButton;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->viewAttachment()V

    return-void
.end method

.method private removeAttachment()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mRemoveMessageId:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void
.end method

.method private viewAttachment()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mViewMessageId:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method


# virtual methods
.method public init(Landroid/os/Handler;IILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "viewMessageId"    # I
    .param p3, "removeMessageId"    # I
    .param p4, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mHandler:Landroid/os/Handler;

    .line 59
    iput p2, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mViewMessageId:I

    .line 60
    iput p3, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mRemoveMessageId:I

    .line 62
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;-><init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;Lcom/motorola/messaging/view/ProgressAttachmentButton$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/motorola/messaging/view/ProgressAttachmentButton$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/view/ProgressAttachmentButton$1;-><init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    iput-object p4, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 50
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    .line 51
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mProgressBar:Landroid/widget/ProgressBar;

    .line 52
    return-void
.end method

.method public setLoading(Z)V
    .locals 3
    .param p1, "isLoading"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    sget-object v0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mFadeIn:Landroid/view/animation/Animation;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton;->mAttachmentButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
