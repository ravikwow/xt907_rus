.class public final enum Lcom/motorola/blur/provider/Email$Account$Capability;
.super Ljava/lang/Enum;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email$Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/provider/Email$Account$Capability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/provider/Email$Account$Capability;

.field public static final enum CALENDAR:Lcom/motorola/blur/provider/Email$Account$Capability;

.field public static final enum CONTACTS:Lcom/motorola/blur/provider/Email$Account$Capability;

.field public static final enum EMAIL:Lcom/motorola/blur/provider/Email$Account$Capability;

.field public static final enum TASKS:Lcom/motorola/blur/provider/Email$Account$Capability;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1574
    new-instance v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4, v3}, Lcom/motorola/blur/provider/Email$Account$Capability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->EMAIL:Lcom/motorola/blur/provider/Email$Account$Capability;

    new-instance v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    const-string v1, "CONTACTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/blur/provider/Email$Account$Capability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->CONTACTS:Lcom/motorola/blur/provider/Email$Account$Capability;

    new-instance v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    const-string v1, "CALENDAR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/blur/provider/Email$Account$Capability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->CALENDAR:Lcom/motorola/blur/provider/Email$Account$Capability;

    new-instance v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    const-string v1, "TASKS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/blur/provider/Email$Account$Capability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->TASKS:Lcom/motorola/blur/provider/Email$Account$Capability;

    .line 1573
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/blur/provider/Email$Account$Capability;

    sget-object v1, Lcom/motorola/blur/provider/Email$Account$Capability;->EMAIL:Lcom/motorola/blur/provider/Email$Account$Capability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/provider/Email$Account$Capability;->CONTACTS:Lcom/motorola/blur/provider/Email$Account$Capability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/provider/Email$Account$Capability;->CALENDAR:Lcom/motorola/blur/provider/Email$Account$Capability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/provider/Email$Account$Capability;->TASKS:Lcom/motorola/blur/provider/Email$Account$Capability;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->$VALUES:[Lcom/motorola/blur/provider/Email$Account$Capability;

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
    .line 1577
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1578
    iput p3, p0, Lcom/motorola/blur/provider/Email$Account$Capability;->value:I

    .line 1579
    return-void
.end method

.method public static final valueOf(I)Lcom/motorola/blur/provider/Email$Account$Capability;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 1586
    invoke-static {}, Lcom/motorola/blur/provider/Email$Account$Capability;->values()[Lcom/motorola/blur/provider/Email$Account$Capability;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/blur/provider/Email$Account$Capability;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1587
    .local v1, "cap":Lcom/motorola/blur/provider/Email$Account$Capability;
    iget v4, v1, Lcom/motorola/blur/provider/Email$Account$Capability;->value:I

    if-ne v4, p0, :cond_0

    .line 1588
    return-object v1

    .line 1586
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1591
    .end local v1    # "cap":Lcom/motorola/blur/provider/Email$Account$Capability;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/provider/Email$Account$Capability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1573
    const-class v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/provider/Email$Account$Capability;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/provider/Email$Account$Capability;
    .locals 1

    .prologue
    .line 1573
    sget-object v0, Lcom/motorola/blur/provider/Email$Account$Capability;->$VALUES:[Lcom/motorola/blur/provider/Email$Account$Capability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/provider/Email$Account$Capability;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/motorola/blur/provider/Email$Account$Capability;->value:I

    return v0
.end method
