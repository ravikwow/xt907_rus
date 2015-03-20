.class public final Lcom/motorola/messaging/model/RegionModel;
.super Lcom/motorola/messaging/model/Model;
.source "RegionModel.java"


# static fields
.field private static DISPLAY_HEIGHT:I

.field private static DISPLAY_WIDTH:I

.field private static mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

.field private static mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

.field private static mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;


# instance fields
.field private mHeight:I

.field private mLeft:I

.field private final mRegionId:Ljava/lang/String;

.field private mTop:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    .line 39
    sput v0, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/RegionModel;->mLeft:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/RegionModel;->mTop:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/RegionModel;->mRegionId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "regionId"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 53
    iput-object p1, p0, Lcom/motorola/messaging/model/RegionModel;->mRegionId:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/motorola/messaging/model/RegionModel;->mLeft:I

    .line 55
    iput p3, p0, Lcom/motorola/messaging/model/RegionModel;->mTop:I

    .line 56
    return-void
.end method

.method public static getDefaultMediaRegion()Lcom/motorola/messaging/model/RegionModel;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/motorola/messaging/model/RegionModel;

    const-string v1, "Image"

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/messaging/model/RegionModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 190
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

    const-wide/high16 v1, 0x3fe8000000000000L

    sget v3, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    .line 191
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

    sget v1, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    .line 193
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultMediaRegion:Lcom/motorola/messaging/model/RegionModel;

    return-object v0
.end method

.method public static getDefaultRootRegion()Lcom/motorola/messaging/model/RegionModel;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/motorola/messaging/model/RegionModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/messaging/model/RegionModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 176
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

    sget v1, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    .line 177
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

    sget v1, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    .line 180
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultRootRegion:Lcom/motorola/messaging/model/RegionModel;

    return-object v0
.end method

.method public static getDefaultTextRegion()Lcom/motorola/messaging/model/RegionModel;
    .locals 7

    .prologue
    const-wide/high16 v5, 0x3fe8000000000000L

    .line 201
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/motorola/messaging/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    sget v3, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/messaging/model/RegionModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 203
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;

    sget v1, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    sget v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    .line 204
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;

    sget v1, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    iput v1, v0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    .line 206
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/RegionModel;->mDefaultTextRegion:Lcom/motorola/messaging/model/RegionModel;

    return-object v0
.end method

.method public static getDisplayHeight()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    sget v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    if-eqz v2, :cond_0

    sget v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    if-nez v2, :cond_1

    .line 215
    :cond_0
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 217
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 218
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    .line 219
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    .line 221
    sget v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    sget v3, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    if-le v2, v3, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_WIDTH:I

    .line 223
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/motorola/messaging/model/RegionModel;->DISPLAY_HEIGHT:I

    .line 226
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mLeft:I

    return v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/messaging/model/RegionModel;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mTop:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x8

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    .line 167
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/Model;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/motorola/messaging/model/RegionModel;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/model/RegionModel;->mRegionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
