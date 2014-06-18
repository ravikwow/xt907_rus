.class Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;
.super Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankDefaultImageProvider"
.end annotation


# static fields
.field private static sDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPhotoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/ContactPhotoManager$1;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZ)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z

    .prologue
    .line 126
    sget-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method
