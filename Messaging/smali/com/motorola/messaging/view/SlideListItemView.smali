.class public Lcom/motorola/messaging/view/SlideListItemView;
.super Landroid/widget/LinearLayout;
.source "SlideListItemView.java"


# instance fields
.field private mSlideImageVideo:Landroid/widget/ImageView;

.field private mSlideSoundIcon:Landroid/widget/ImageView;

.field private mTextPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 56
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideSoundIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public fillFromSlide(Lcom/motorola/messaging/model/SlideModel;)V
    .locals 5
    .param p1, "slide"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 76
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    check-cast v1, Lcom/motorola/messaging/model/TextModel;

    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideSoundIcon:Landroid/widget/ImageView;

    check-cast v1, Lcom/motorola/messaging/model/AudioModel;

    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/AudioModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideSoundIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 82
    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_2
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    check-cast v1, Lcom/motorola/messaging/model/VideoModel;

    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 89
    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_3
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    check-cast v1, Lcom/motorola/messaging/model/ImageModel;

    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v2, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    return-void

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 65
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideImageVideo:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideListItemView;->mSlideSoundIcon:Landroid/widget/ImageView;

    .line 67
    return-void
.end method
