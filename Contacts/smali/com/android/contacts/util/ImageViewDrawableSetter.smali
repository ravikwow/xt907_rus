.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# instance fields
.field private mCompressed:[B

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 50
    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1, "compressed"    # [B

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    .local v2, "rsrc":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 153
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 138
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v1

    .line 141
    .local v1, "resId":I
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    :goto_0
    return-object v3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ImageViewDrawableSetter"

    const-string v4, "Cannot load default avatar resource."

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCompressedImage()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    return-object v0
.end method

.method public getTarget()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected setCompressedImage([B)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "compressed"    # [B

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 98
    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 106
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    .end local v1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 98
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0

    .line 108
    .restart local v1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v3, :cond_5

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_2
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 113
    :cond_5
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 114
    .local v0, "beforeAndAfter":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    .line 115
    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 116
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 117
    .local v2, "transition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2
.end method

.method protected setTarget(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 78
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_0
    return-void
.end method

.method public setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "contactData"    # Lcom/android/contacts/model/Contact;
    .param p2, "photoView"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method
