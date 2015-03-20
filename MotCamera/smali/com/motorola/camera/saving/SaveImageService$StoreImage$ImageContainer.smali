.class Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService$StoreImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageContainer"
.end annotation


# instance fields
.field private mDate:J

.field private mJpeg:[B

.field private mLocation:Landroid/location/Location;

.field private mOrientation:I

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "jpeg"    # [B
    .param p5, "date"    # J
    .param p7, "location"    # Landroid/location/Location;
    .param p8, "orientation"    # I

    .prologue
    .line 578
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mPath:Ljava/lang/String;

    .line 580
    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mTitle:Ljava/lang/String;

    .line 581
    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mJpeg:[B

    .line 582
    iput-wide p5, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mDate:J

    .line 583
    if-eqz p7, :cond_0

    .line 584
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mLocation:Landroid/location/Location;

    .line 586
    :cond_0
    iput p8, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mOrientation:I

    .line 587
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;ILcom/motorola/camera/saving/SaveImageService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [B
    .param p5, "x4"    # J
    .param p7, "x5"    # Landroid/location/Location;
    .param p8, "x6"    # I
    .param p9, "x7"    # Lcom/motorola/camera/saving/SaveImageService$1;

    .prologue
    .line 558
    invoke-direct/range {p0 .. p8}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;-><init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)[B
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getImage()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getOrientation()I

    move-result v0

    return v0
.end method

.method private getDate()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mDate:J

    return-wide v0
.end method

.method private getImage()[B
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mJpeg:[B

    return-object v0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mOrientation:I

    return v0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->mTitle:Ljava/lang/String;

    return-object v0
.end method
