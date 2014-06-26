.class final Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutRecord"
.end annotation


# instance fields
.field public column:I

.field public height:I

.field public id:J

.field private mMargins:[I

.field public span:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>()V

    return-void
.end method

.method private final ensureMargins()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 291
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public final getMarginAbove(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final getMarginBelow(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final setMarginAbove(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 314
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aput p2, v0, v1

    goto :goto_0
.end method

.method public final setMarginBelow(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 322
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutRecord{c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-eqz v2, :cond_1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " margins[above, below]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->mMargins:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 334
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
