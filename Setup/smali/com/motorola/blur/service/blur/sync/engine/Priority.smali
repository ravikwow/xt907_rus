.class public final enum Lcom/motorola/blur/service/blur/sync/engine/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/engine/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum CRITICAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum HIGH:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum LOW:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum MAX:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum MIN:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field public static final enum NORMAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->MAX:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "CRITICAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->CRITICAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "HIGH"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->HIGH:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "NORMAL"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v7, v2}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->NORMAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "LOW"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v8, v2}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->LOW:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    const-string v1, "MIN"

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/sync/engine/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->MIN:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/engine/Priority;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/engine/Priority;->MAX:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/sync/engine/Priority;->CRITICAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/engine/Priority;->HIGH:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/engine/Priority;->NORMAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/blur/sync/engine/Priority;->LOW:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/engine/Priority;->MIN:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->$VALUES:[Lcom/motorola/blur/service/blur/sync/engine/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->mValue:I

    .line 20
    return-void
.end method

.method public static fromValue(I)Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 27
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/engine/Priority;->values()[Lcom/motorola/blur/service/blur/sync/engine/Priority;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/blur/service/blur/sync/engine/Priority;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 28
    .local v3, "p":Lcom/motorola/blur/service/blur/sync/engine/Priority;
    iget v4, v3, Lcom/motorola/blur/service/blur/sync/engine/Priority;->mValue:I

    if-ne p0, v4, :cond_0

    .line 32
    .end local v3    # "p":Lcom/motorola/blur/service/blur/sync/engine/Priority;
    :goto_1
    return-object v3

    .line 27
    .restart local v3    # "p":Lcom/motorola/blur/service/blur/sync/engine/Priority;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v3    # "p":Lcom/motorola/blur/service/blur/sync/engine/Priority;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->$VALUES:[Lcom/motorola/blur/service/blur/sync/engine/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/engine/Priority;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/Priority;->mValue:I

    return v0
.end method
