.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
    }
.end annotation


# instance fields
.field private mCanSend:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mSendButton:Landroid/widget/Button;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mView:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AttachmentEditor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;
    .locals 5
    .param p1, "stub_view_id"    # I
    .param p2, "real_view_id"    # I
    .param p3, "view_button_id"    # I
    .param p4, "replace_button_id"    # I
    .param p5, "remove_button_id"    # I
    .param p6, "view_message"    # I
    .param p7, "replace_message"    # I
    .param p8, "remove_message"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 203
    .local v2, "view":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 206
    .local v3, "viewButton":Landroid/widget/Button;
    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 207
    .local v1, "replaceButton":Landroid/widget/Button;
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 209
    .local v0, "removeButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p7}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p8}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2    # "view":Landroid/widget/LinearLayout;
    return-object v2
.end method

.method private createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;
    .locals 7
    .param p1, "inPortrait"    # Z

    .prologue
    .line 217
    const v4, 0x7f0f0014

    const v5, 0x7f0f0061

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 220
    .local v3, "view":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    const v4, 0x7f0f0064

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    .local v0, "editBtn":Landroid/widget/Button;
    const v4, 0x7f0f0065

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    .line 224
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 225
    const v4, 0x7f0f0054

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 228
    .local v1, "playBtn":Landroid/widget/ImageButton;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v4, 0x7f0f0066

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 233
    .local v2, "removeButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    .end local v3    # "view":Landroid/widget/LinearLayout;
    return-object v3
.end method

.method private createView()Lcom/android/mms/ui/SlideViewInterface;
    .locals 11

    .prologue
    const v2, 0x7f0f003f

    const v4, 0x7f0f0036

    const v1, 0x7f0f0011

    const/4 v7, 0x4

    const/16 v8, 0xa

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->inPortraitMode()Z

    move-result v9

    .line 155
    .local v9, "inPortrait":Z
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 156
    invoke-direct {p0, v9}, Lcom/android/mms/ui/AttachmentEditor;->createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    .line 160
    .local v10, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const v3, 0x7f0f0041

    const v5, 0x7f0f0042

    const/16 v6, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const v1, 0x7f0f0012

    const v2, 0x7f0f006d

    const v3, 0x7f0f006f

    const v4, 0x7f0f0070

    const v5, 0x7f0f0071

    const/4 v6, 0x7

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const v1, 0x7f0f0013

    const/high16 v2, 0x7f0f0000

    const v3, 0x7f0f0005

    const v4, 0x7f0f0006

    const v5, 0x7f0f0007

    const/16 v6, 0x8

    const/4 v7, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const v3, 0x7f0f0041

    const v5, 0x7f0f0042

    const/16 v6, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getStubView(II)Landroid/view/View;
    .locals 2
    .param p1, "stubId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 134
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 137
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-object v1
.end method

.method private inPortraitMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 194
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 195
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public setCanSend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    if-eq v0, p1, :cond_0

    .line 112
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 115
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 6
    .param p1, "msg"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 75
    iput-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 78
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 86
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->getAttachment(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 88
    .local v0, "model":Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isLocationVCard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    .end local v0    # "model":Lcom/android/mms/model/MediaModel;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->createView()Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/Presenter;->getModel()Lcom/android/mms/model/Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    :cond_3
    const-string v1, "MmsThumbnailPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_1
.end method
