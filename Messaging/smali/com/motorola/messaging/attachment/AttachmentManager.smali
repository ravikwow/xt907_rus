.class public Lcom/motorola/messaging/attachment/AttachmentManager;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# instance fields
.field private mEditButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mMsgEditorLayout:Lcom/motorola/messaging/view/MessageEditorLayout;

.field private mRemoveButton:Landroid/widget/Button;

.field private final mRoot:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "vRoot"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p3, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/attachment/AttachmentManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/attachment/AttachmentManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createLoadingMediaView()V
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/motorola/messaging/attachment/AttachmentManager;->inflateAttachmentLayout()V

    .line 198
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/ProgressAttachmentButton;

    .line 199
    .local v0, "attachmentButtonProgress":Lcom/motorola/messaging/view/ProgressAttachmentButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->setLoading(Z)V

    .line 200
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRemoveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRemoveButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/view/MessageEditorLayout;

    iput-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mMsgEditorLayout:Lcom/motorola/messaging/view/MessageEditorLayout;

    .line 203
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mMsgEditorLayout:Lcom/motorola/messaging/view/MessageEditorLayout;

    invoke-virtual {v1}, Lcom/motorola/messaging/view/MessageEditorLayout;->onAttachmentLoading()V

    .line 204
    return-void
.end method

.method private createMediaView(III)V
    .locals 1
    .param p1, "viewMessageId"    # I
    .param p2, "removeMessageId"    # I
    .param p3, "backgroundResId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method private createMediaView(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "viewMessageId"    # I
    .param p2, "removeMessageId"    # I
    .param p3, "backgroundBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 166
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method private createMediaView(IILandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "viewMessageId"    # I
    .param p2, "removeMessageId"    # I
    .param p3, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/attachment/AttachmentManager;->inflateAttachmentLayout()V

    .line 175
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/ProgressAttachmentButton;

    .line 176
    .local v0, "attachmentButtonProgress":Lcom/motorola/messaging/view/ProgressAttachmentButton;
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRemoveButton:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/messaging/attachment/AttachmentManager$1;

    invoke-direct {v2, p0, p2}, Lcom/motorola/messaging/attachment/AttachmentManager$1;-><init>(Lcom/motorola/messaging/attachment/AttachmentManager;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/messaging/attachment/AttachmentManager$2;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/attachment/AttachmentManager$2;-><init>(Lcom/motorola/messaging/attachment/AttachmentManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->init(Landroid/os/Handler;IILandroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {v0, v3}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->setLoading(Z)V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mEditButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private createView(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    const/4 v7, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 100
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->getAttachmentType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 161
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 103
    :pswitch_1
    const/16 v4, 0x9

    const v5, 0x7f02007f

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(III)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 109
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v0

    .line 111
    .local v0, "audio":Lcom/motorola/messaging/model/AudioModel;
    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/motorola/messaging/model/AudioModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 118
    .end local v0    # "audio":Lcom/motorola/messaging/model/AudioModel;
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_3
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 119
    .restart local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v1

    .line 121
    .local v1, "image":Lcom/motorola/messaging/model/ImageModel;
    const/4 v4, 0x4

    invoke-virtual {v1}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 128
    .end local v1    # "image":Lcom/motorola/messaging/model/ImageModel;
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_4
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 129
    .restart local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v3

    .line 131
    .local v3, "video":Lcom/motorola/messaging/model/VideoModel;
    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 138
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v3    # "video":Lcom/motorola/messaging/model/VideoModel;
    :pswitch_5
    const v4, 0x7f020081

    invoke-direct {p0, v7, v6, v4}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(III)V

    goto :goto_0

    .line 143
    :pswitch_6
    const v4, 0x7f02007d

    invoke-direct {p0, v7, v6, v4}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(III)V

    goto :goto_0

    .line 148
    :pswitch_7
    const/16 v4, 0x8

    const v5, 0x7f020080

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(III)V

    goto :goto_0

    .line 153
    :pswitch_8
    const/4 v4, 0x7

    const v5, 0x7f02007a

    invoke-direct {p0, v4, v6, v5}, Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(III)V

    goto :goto_0

    .line 158
    :pswitch_9
    invoke-direct {p0}, Lcom/motorola/messaging/attachment/AttachmentManager;->createLoadingMediaView()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private inflateAttachmentLayout()V
    .locals 4

    .prologue
    const v3, 0x7f090020

    .line 72
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRoot:Landroid/view/View;

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 76
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mRemoveButton:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mEditButton:Landroid/widget/Button;

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public update(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/attachment/AttachmentManager;->setVisibility(I)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/attachment/AttachmentManager;->mView:Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/attachment/AttachmentManager;->createView(Lcom/motorola/messaging/composer/WorkingMessage;)V

    goto :goto_0
.end method
