.class Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ContactPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/simmanager/ContactPhotoLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/simmanager/ContactPhotoLoader$1;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;-><init>()V

    return-void
.end method
