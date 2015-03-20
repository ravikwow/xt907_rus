.class public final enum Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
.super Ljava/lang/Enum;
.source "ConflictStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

.field public static final enum CLIENT_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

.field public static final enum CUSTOM:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

.field public static final enum SERVER_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->CUSTOM:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    const-string v1, "CLIENT_ALWAYS_WINS"

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->CLIENT_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    const-string v1, "SERVER_ALWAYS_WINS"

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->SERVER_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->CUSTOM:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->CLIENT_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->SERVER_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->$VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->mValue:I

    .line 26
    return-void
.end method

.method public static fromValue(I)Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    .locals 6
    .param p0, "value"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->values()[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 30
    .local v2, "iter":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    iget v4, v2, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->mValue:I

    if-ne v4, p0, :cond_0

    .line 31
    return-object v2

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "iter":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid value for a conflict strategy type."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->$VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->mValue:I

    return v0
.end method
