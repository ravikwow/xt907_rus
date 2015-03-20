.class public Lcom/motorola/messaging/slideshow/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/motorola/messaging/model/SmilModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->DEBUG:Z

    .line 44
    sget-boolean v1, Lcom/motorola/messaging/slideshow/SlideshowEditor;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/SmilModel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "SlideshowEditor"

    const-string v1, "new SlideshowEditor"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    .line 56
    return-void
.end method


# virtual methods
.method public addNewSlide()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-boolean v4, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 65
    const-string v4, "SlideshowEditor"

    const-string v5, "addNewSlide"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v1

    .line 69
    .local v1, "size":I
    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    .line 70
    new-instance v2, Lcom/motorola/messaging/model/SlideModel;

    invoke-direct {v2}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 73
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v4, v2}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/model/RestrictedModeExceedSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    const/4 v3, 0x1

    .line 89
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :goto_0
    return v3

    .line 74
    .restart local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    new-instance v3, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;

    invoke-direct {v3}, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;-><init>()V

    throw v3

    .line 78
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    new-instance v3, Lcom/motorola/messaging/model/ExceedMessageSizeException;

    invoke-direct {v3}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>()V

    throw v3

    .line 82
    .end local v0    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_2
    move-exception v0

    .line 83
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v4, "SlideshowEditor"

    const-string v5, "Failed to add slide."

    invoke-static {v4, v5, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v0    # "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    const-string v4, "SlideshowEditor"

    const-string v5, "The limitation of the number of slides is reached."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canAddSlide()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeAudio(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newAudio"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 143
    sget-boolean v2, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "SlideshowEditor"

    const-string v3, "changeAudio"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/AudioModel;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v2, v3, p2}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 148
    .local v0, "audio":Lcom/motorola/messaging/model/AudioModel;
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    .line 149
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V

    .line 150
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newImage"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 132
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "SlideshowEditor"

    const-string v1, "changeImage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    if-eqz p2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/model/ImageModel;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v1, v2, v3, p2}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V

    .line 139
    :cond_1
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "newText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 113
    sget-boolean v2, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "SlideshowEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeText, newText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 119
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v1

    .line 120
    .local v1, "text":Lcom/motorola/messaging/model/TextModel;
    if-nez v1, :cond_2

    .line 121
    new-instance v1, Lcom/motorola/messaging/model/TextModel;

    .end local v1    # "text":Lcom/motorola/messaging/model/TextModel;
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .restart local v1    # "text":Lcom/motorola/messaging/model/TextModel;
    invoke-virtual {v1, p2}, Lcom/motorola/messaging/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V

    .line 128
    .end local v0    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v1    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_1
    :goto_0
    return-void

    .line 124
    .restart local v0    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .restart local v1    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-virtual {v1, p2}, Lcom/motorola/messaging/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeVideo(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newVideo"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 154
    sget-boolean v2, Lcom/motorola/messaging/slideshow/SlideshowEditor;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "SlideshowEditor"

    const-string v3, "changeVideo"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    new-instance v1, Lcom/motorola/messaging/model/VideoModel;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v1, v2, v3, p2}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 159
    .local v1, "video":Lcom/motorola/messaging/model/VideoModel;
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 160
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V

    .line 161
    return-void
.end method

.method public moveSlideDown(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/model/SmilModel;->moveSlide(II)V

    .line 169
    return-void
.end method

.method public moveSlideUp(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/model/SmilModel;->moveSlide(II)V

    .line 165
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 106
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public removeSlide(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowEditor;->mModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->removeSlide(I)Lcom/motorola/messaging/model/SlideModel;

    .line 100
    return-void
.end method
